import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/core/auth/auth_state.dart';
import 'package:lab_management_system_flutter/core/auth/login_page.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/core/auth/sso_flow.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import '../../fakes/in_memory_sso_state_store.dart';
import '../../fakes/in_memory_token_store.dart';

/// REQ-2026-015 M01.F05.I03：SSO OAuth 2.0 授权码流（flutter web 形态）。
/// 阶段 1 发起（authorize 四查询参 → 整页跳 IdP）+ 阶段 2 回跳（验 state
/// 一次性 → callback 四字段换 JWT → adopt 进 Authed）。
void main() {
  Map<String, dynamic> okBody({String token = 'jwt-sso'}) => {
    'token': token,
    'refreshToken': 'r-$token',
    'user': {'id': 'u-1', 'username': 'alice'},
    'tenants': <dynamic>[],
  };

  (Dio, DioAdapter) rig() {
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    return (dio, adapter);
  }

  SsoFlow flow(Dio dio, SsoStateStore store, void Function(LoginResponse) onAdopt,
          void Function(String) navigate) =>
      SsoFlow(
        api: AuthApi(dio, standardSerializers),
        stateStore: store,
        onAdopt: onAdopt,
        navigate: navigate,
      );

  Future<void> pumpLogin(
    WidgetTester tester,
    Dio dio, {
    Uri? initialUri,
    SsoFlow? ssoFlow,
    InMemorySsoStateStore? ssoStore,
  }) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          dioProvider.overrideWithValue(dio),
          tokenStoreProvider.overrideWithValue(InMemoryTokenStore()),
          sessionGuardProvider.overrideWithValue(SessionGuard()),
          if (ssoStore != null)
            ssoStateStoreProvider.overrideWithValue(ssoStore),
          if (ssoFlow != null) ssoFlowProvider.overrideWithValue(ssoFlow),
        ],
        child: MaterialApp(home: LoginPage(initialUri: initialUri)),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('generateState：base64url 无填充 43 字符防重放', (tester) async {
    final a = SsoFlow.generateState();
    final b = SsoFlow.generateState();
    expect(a, matches(RegExp(r'^[A-Za-z0-9_-]{43}$')));
    expect(b, matches(RegExp(r'^[A-Za-z0-9_-]{43}$')));
    expect(a, isNot(b));
  });

  testWidgets('parseCallback：缺 code/state 不收', (tester) async {
    expect(SsoFlow.parseCallback(Uri.parse('http://x/?state=s')), isNull);
    expect(SsoFlow.parseCallback(Uri.parse('http://x/?code=c')), isNull);
    expect(SsoFlow.parseCallback(Uri.parse('http://x/?code=&state=s')), isNull);
    final cb = SsoFlow.parseCallback(Uri.parse('http://x/?code=c&state=s'));
    expect(cb, isNotNull);
    expect(cb!.code, 'c');
    expect(cb.state, 's');
  });

  testWidgets('发起：authorize 四查询参 + 落账 + 跳 IdP', (tester) async {
    // fn: M01.F05.I03
    Map<String, String>? q;
    String? navUrl;
    final (dio, adapter) = rig();
    adapter.onGet('/api/auth/sso/authorize', (server) {
      server.reply(
        200,
        (RequestOptions options) {
          q = options.uri.queryParameters;
          return {
            'authorizeUrl': 'https://saas.local/oauth/authorize?client_id=x',
            'state': 'srv-state',
          };
        },
      );
    });
    final store = InMemorySsoStateStore();
    final f = flow(dio, store, (_) {}, (u) => navUrl = u);
    final err = await f.start(
      clientId: 'lab-management',
      redirectUri: 'http://localhost:5208/',
    );
    expect(err, isNull);
    expect(q!['response_type'], 'code');
    expect(q!['client_id'], 'lab-management');
    expect(q!['redirect_uri'], 'http://localhost:5208/');
    expect(q!['state'], hasLength(43));
    final pending = await store.read();
    expect(pending, isNotNull);
    expect(pending!.state, q!['state']);
    expect(pending.redirectUri, 'http://localhost:5208/');
    expect(navUrl, 'https://saas.local/oauth/authorize?client_id=x');
  });

  testWidgets('发起：配置缺失 fail-fast 不打 authorize', (tester) async {
    var hits = 0;
    String? navUrl;
    final (dio, adapter) = rig();
    adapter.onGet('/api/auth/sso/authorize', (server) {
      server.reply(
        200,
        (RequestOptions options) {
          hits++;
          return {'authorizeUrl': 'https://saas.local/x', 'state': 's'};
        },
      );
    });
    final f = flow(dio, InMemorySsoStateStore(), (_) {}, (u) => navUrl = u);
    final err = await f.start(clientId: '   ', redirectUri: 'http://x/');
    expect(err, contains('SSO 配置缺失'));
    expect(hits, 0);
    expect(navUrl, isNull);
  });

  testWidgets('回跳：state 不匹配拒换不打 exchange（AC-2）', (tester) async {
    var exchangeHits = 0;
    final (dio, adapter) = rig();
    adapter.onPost('/api/auth/sso/callback', (server) {
      server.reply(
        500,
        (RequestOptions options) {
          exchangeHits++;
          return <String, dynamic>{};
        },
      );
    });
    final store = InMemorySsoStateStore();
    await store.save(state: 'S-issued', redirectUri: 'http://localhost:5208/');
    final f = flow(dio, store, (_) {}, (_) {});
    final err = await f.handleCallback(
      Uri.parse('http://localhost:5208/?code=cc&state=TAMPERED'),
    );
    expect(err, contains('state 校验失败'));
    expect(exchangeHits, 0);
    // 一次性：拒换后账目也清，杜绝旧凭据重放。
    expect(store.read(), completion(isNull));
  });

  testWidgets('回跳：四字段换发落账 adopt（AC-1）', (tester) async {
    Map<String, dynamic>? raw;
    LoginResponse? adopted;
    final (dio, adapter) = rig();
    adapter.onPost('/api/auth/sso/callback', (server) {
      server.reply(
        200,
        (RequestOptions options) {
          raw = options.data as Map<String, dynamic>;
          return okBody();
        },
      );
    });
    final store = InMemorySsoStateStore();
    await store.save(state: 'S-issued', redirectUri: 'http://localhost:5208/');
    final f = flow(dio, store, (r) => adopted = r, (_) {});
    final err = await f.handleCallback(
      Uri.parse('http://localhost:5208/?code=cc&state=S-issued'),
    );
    expect(err, isNull);
    expect(raw, isNotNull);
    expect(raw!['grant_type'], 'authorization_code');
    expect(raw!['code'], 'cc');
    expect(raw!['redirect_uri'], 'http://localhost:5208/');
    expect(raw!['state'], 'S-issued');
    expect(adopted?.token, 'jwt-sso');
    // 一次性：换发后即清。
    expect(store.read(), completion(isNull));
  });

  testWidgets('回跳：换发失败 token 不动可重试（AC-4）', (tester) async {
    LoginResponse? adopted;
    final (dio, adapter) = rig();
    adapter.onPost('/api/auth/sso/callback', (server) {
      server.reply(500, <String, dynamic>{'message': 'boom'});
    });
    final store = InMemorySsoStateStore();
    await store.save(state: 'S-issued', redirectUri: 'http://localhost:5208/');
    final f = flow(dio, store, (r) => adopted = r, (_) {});
    final err = await f.handleCallback(
      Uri.parse('http://localhost:5208/?code=cc&state=S-issued'),
    );
    expect(err, contains('SSO 登录失败'));
    expect(adopted, isNull);
    // 账目已清：用户可直接重按「SSO 登录」重发起。
    expect(store.read(), completion(isNull));
  });

  testWidgets('登录页：「SSO 登录」按钮入口', (tester) async {
    final (dio, _) = rig();
    final rec = _RecordingSsoFlow();
    await pumpLogin(tester, dio, ssoFlow: rec);
    expect(find.text('SSO 登录'), findsOneWidget);
  });

  testWidgets('登录页：点 SSO 按钮走发起缝', (tester) async {
    final (dio, _) = rig();
    final rec = _RecordingSsoFlow();
    await pumpLogin(tester, dio, ssoFlow: rec);
    await tester.tap(find.text('SSO 登录'));
    await tester.pumpAndSettle();
    expect(rec.startCalls, 1);
  });

  testWidgets('登录页：回跳落地自动换发进 Authed', (tester) async {
    final (dio, adapter) = rig();
    adapter.onPost('/api/auth/sso/callback', (server) {
      server.reply(200, okBody());
    });
    final ssoStore = InMemorySsoStateStore();
    await ssoStore.save(
      state: 'S-issued',
      redirectUri: 'http://localhost:5208/',
    );
    final store = InMemoryTokenStore();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          dioProvider.overrideWithValue(dio),
          tokenStoreProvider.overrideWithValue(store),
          sessionGuardProvider.overrideWithValue(SessionGuard()),
          ssoStateStoreProvider.overrideWithValue(ssoStore),
        ],
        child: MaterialApp(
          home: LoginPage(
            initialUri: Uri.parse('http://localhost:5208/?code=cc&state=S-issued'),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final container = ProviderScope.containerOf(
      tester.element(find.byType(LoginPage)),
    );
    expect(container.read(authControllerProvider), isA<Authed>());
    expect(store.readAccessToken(), completion('jwt-sso'));
  });
}

/// 记录发起调用的 stub（组件面测试用；依赖全给无害哑实现）。
class _RecordingSsoFlow extends SsoFlow {
  _RecordingSsoFlow()
    : super(
        api: AuthApi(Dio(), standardSerializers),
        stateStore: InMemorySsoStateStore(),
        onAdopt: (_) {},
        navigate: (_) {},
      );

  int startCalls = 0;

  @override
  Future<String?> start({
    required String clientId,
    required String redirectUri,
  }) async {
    startCalls++;
    return null;
  }
}
