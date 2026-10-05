import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/core/auth/auth_state.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';

import '../../fakes/in_memory_token_store.dart';
import '../../fakes/throwing_adapter.dart';

/// 测试装配：恒定 overrides + DioAdapter dio。用例里经 adapter.onPost 挂路由。
/// 可注入存储变体（如 T5 的 ThrowingClearTokenStore）做写侧故障注入。
(ProviderContainer, DioAdapter, InMemoryTokenStore, SessionGuard) _rig([
  InMemoryTokenStore? storeOverride,
]) {
  final store = storeOverride ?? InMemoryTokenStore();
  final guard = SessionGuard();
  final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
  // 0.6.1 构造签名 DioAdapter({required this.dio})；matcher 换 UrlRequestMatcher：
  // 默认 FullHttpRequestMatcher 对「注册时无 data: 的路由」永不匹配带体请求。
  final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
  final container = ProviderContainer(
    overrides: [
      dioProvider.overrideWithValue(dio),
      tokenStoreProvider.overrideWithValue(store),
      sessionGuardProvider.overrideWithValue(guard),
    ],
  );
  return (container, adapter, store, guard);
}

const _okBody = <String, dynamic>{
  // LoginResponse 必填面：token/user/tenants；refreshToken/displayName 契约可选。
  'token': 'jwt-access-1',
  'refreshToken': 'jwt-refresh-1',
  'user': {'id': 'u-1', 'username': 'alice', 'displayName': ''},
  'tenants': <dynamic>[],
};

Future<AuthState> _settled(ProviderContainer c) async {
  c.read(authControllerProvider); // 挂载即触发 restore 微任务
  await pumpEventQueue(); // 等落地（riverpod 3：read 前无元素可 pump）
  return c.read(authControllerProvider);
}

void main() {
  test('restore：有 accessToken → Authed', () async {
    final (container, _, store, _) = _rig();
    addTearDown(container.dispose);
    await store.save(
      accessToken: 'jwt-access-1',
      refreshToken: 'jwt-refresh-1',
    );
    await _settled(container);
    expect(container.read(authControllerProvider), const Authed());
  });

  test('restore：存储空 → Anonymous', () async {
    final (container, _, _, _) = _rig();
    addTearDown(container.dispose);
    await _settled(container);
    expect(container.read(authControllerProvider), const AuthAnonymous());
  });

  test('restore：只剩 refreshToken（accessToken 空）→ Anonymous（RF#2）', () async {
    final (container, _, store, _) = _rig();
    addTearDown(container.dispose);
    store.debugOverwrite(accessToken: null, refreshToken: 'jwt-refresh-1');
    await _settled(container);
    expect(container.read(authControllerProvider), const AuthAnonymous());
  });

  test('登录成功换 JWT 并持久化；displayName 空串回退 username（RF#1）', () async {
    final (container, adapter, store, _) = _rig();
    addTearDown(container.dispose);
    adapter.onPost(
      '/api/auth/native-login',
      (server) => server.reply(200, _okBody),
    );
    await _settled(container); // 先落 Anonymous
    await container
        .read(authControllerProvider.notifier)
        .login('alice', 'dev123456');
    final state = container.read(authControllerProvider);
    expect(state, const Authed(userId: 'u-1', displayName: 'alice'));
    expect(await store.readAccessToken(), 'jwt-access-1');
    expect(await store.readRefreshToken(), 'jwt-refresh-1');
  });

  test('displayName 有值 → 直用不回退', () async {
    final (container, adapter, _, _) = _rig();
    addTearDown(container.dispose);
    final body = Map<String, dynamic>.of(_okBody)
      ..['user'] = {
        'id': 'u-1',
        'username': 'alice',
        'displayName': 'Alice Zhang',
      };
    adapter.onPost(
      '/api/auth/native-login',
      (server) => server.reply(200, body),
    );
    await _settled(container);
    await container.read(authControllerProvider.notifier).login('alice', 'x');
    expect(
      container.read(authControllerProvider),
      const Authed(userId: 'u-1', displayName: 'Alice Zhang'),
    );
  });

  test('401 错凭据 → failed 文案（且不触发 guard）', () async {
    final (container, adapter, store, guard) = _rig();
    addTearDown(container.dispose);
    var fired = 0;
    guard.onUnauthorized = () => fired++;
    adapter.onPost(
      '/api/auth/native-login',
      (server) => server.reply(401, {
        'code': 'INVALID_CREDENTIALS',
        'message': '用户名或密码错误',
      }),
    );
    await _settled(container);
    await container.read(authControllerProvider.notifier).login('alice', 'bad');
    expect(
      container.read(authControllerProvider),
      const AuthFailed('用户名或密码错误'),
    );
    expect(fired, 0); // auth 路径排除
    expect(await store.readAccessToken(), isNull);
  });

  test('带响应的 500 → 登录失败文案（不谎报网络断）', () async {
    final (container, adapter, _, _) = _rig();
    addTearDown(container.dispose);
    adapter.onPost(
      '/api/auth/native-login',
      (server) => server.reply(500, {'code': 'INTERNAL', 'message': 'boom'}),
    );
    await _settled(container);
    await container.read(authControllerProvider.notifier).login('alice', 'x');
    expect(
      container.read(authControllerProvider),
      const AuthFailed('登录失败，请稍后再试'),
    );
  });

  test('网络不可达 → failed 文案', () async {
    final (container, _, _, _) = _rig();
    addTearDown(container.dispose);
    // 换 adapter：ThrowingAdapter 模拟连不上（复用 dioProvider 已 override 的同一 dio）。
    final dio = container.read(dioProvider);
    dio.httpClientAdapter = ThrowingAdapter();
    await _settled(container);
    await container.read(authControllerProvider.notifier).login('alice', 'x');
    expect(container.read(authControllerProvider), const AuthFailed('无法连接服务器'));
  });

  test('submitting 期间重复 login 是 no-op（RF#1 状态机侧）', () async {
    final (container, adapter, _, _) = _rig();
    addTearDown(container.dispose);
    var calls = 0;
    adapter.onPost('/api/auth/native-login', (server) {
      calls++;
      return server.reply(200, _okBody);
    });
    await _settled(container);
    final notifier = container.read(authControllerProvider.notifier);
    await Future.wait([notifier.login('a', 'b'), notifier.login('a', 'b')]);
    expect(calls, 1);
  });

  test('200 空体（data null）→ 缺令牌文案', () async {
    final (container, adapter, store, _) = _rig();
    addTearDown(container.dispose);
    adapter.onPost(
      '/api/auth/native-login',
      // 契约 token 必填——「缺令牌」可达面只剩 200+空体（data null）。
      // 0.6.1 若不容 reply(null) 改 reply('')，断言不变。
      (server) => server.reply(200, null),
    );
    await _settled(container);
    await container.read(authControllerProvider.notifier).login('alice', 'x');
    expect(
      container.read(authControllerProvider),
      const AuthFailed('登录失败：服务端响应缺少令牌'),
    );
    expect(await store.readAccessToken(), isNull);
  });
}
