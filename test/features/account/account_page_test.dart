import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/account/account_page.dart';

import '../../fakes/in_memory_token_store.dart';
import '../../support/receipt_fixtures.dart' show receiptRig;

/// REQ-2026-011 M00 租户管理切片：账户页会话渲染（F01）+ 租户切换器
/// （F02.I01：POST body 恰 tenantId → token 换发 → 整表刷新）。
void main() {
  Map<String, dynamic> userJson({
    String id = 'u-1',
    String username = 'wang',
    String? displayName = '王检验',
    String? roleCode = 'lab_user',
  }) => {
    'id': id,
    'username': username,
    'displayName': displayName,
    'roleCode': roleCode,
  };

  Map<String, dynamic> tenantJson({
    String id = 't-1',
    String code = 'phys',
    String name = '理化检测部',
  }) => {
    'tenantId': id,
    'code': code,
    'name': name,
    'roleIds': <String>['r-1'],
  };

  Map<String, dynamic> sessionJson({String currentTenantId = 't-1'}) => {
    'user': userJson(),
    'tenants': [
      tenantJson(id: 't-1'),
      tenantJson(id: 't-2', code: 'micro', name: '微生物检测部'),
    ],
    'currentTenantId': currentTenantId,
  };

  Map<String, dynamic> loginResponseJson({String token = 'tok-t2'}) => {
    'token': token,
    'refreshToken': 'r-$token',
    'user': userJson(),
    'tenants': [
      tenantJson(id: 't-1'),
      tenantJson(id: 't-2', code: 'micro', name: '微生物检测部'),
    ],
  };

  Future<void> pumpAccount(
    WidgetTester tester,
    Dio dio,
    InMemoryTokenStore store,
  ) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          dioProvider.overrideWithValue(dio),
          tokenStoreProvider.overrideWithValue(store),
          sessionGuardProvider.overrideWithValue(SessionGuard()),
        ],
        child: const MaterialApp(home: AccountPage()),
      ),
    );
    await tester.pumpAndSettle();
  }

  Finder rowAction(String rowTitle, String label) => find.descendant(
    of: find.ancestor(of: find.text(rowTitle), matching: find.byType(ListTile)),
    matching: find.text(label),
  );

  testWidgets('账户页：GET /auth/me 会话渲染 + 当前租户标记（F01 证明）', (tester) async {
    // fn: M00.F01
    var meCount = 0;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/auth/me', (server) {
      server.reply(200, (RequestOptions options) {
        meCount++;
        return sessionJson();
      });
    });
    final store = InMemoryTokenStore()..debugOverwrite(accessToken: 'tok-old');
    await pumpAccount(tester, dio, store);
    expect(meCount, 1);
    expect(find.text('王检验'), findsOneWidget);
    expect(find.textContaining('wang'), findsOneWidget);
    expect(find.textContaining('lab_user'), findsOneWidget);
    expect(find.text('理化检测部'), findsOneWidget);
    expect(find.text('微生物检测部'), findsOneWidget);
    // 当前租户标记在 t-1 行；t-2 行才是「切换」。
    expect(rowAction('理化检测部', '当前'), findsOneWidget);
    expect(rowAction('微生物检测部', '切换'), findsOneWidget);
  });

  testWidgets('切换租户：POST body 恰 tenantId + token 换发 + 整表刷新（F02.I01 证明）', (
    tester,
  ) async {
    // fn: M00.F02.I01
    Map<String, dynamic>? raw;
    var meCount = 0;
    String? receiptsPath;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/auth/me', (server) {
      server.reply(200, (RequestOptions options) {
        meCount++;
        return sessionJson();
      });
    });
    adapter.onPost('/api/auth/switch-tenant', (server) {
      server.reply(200, (RequestOptions options) {
        raw = options.data as Map<String, dynamic>;
        return loginResponseJson();
      });
    });
    adapter.onGet('/api/receipts', (server) {
      return server.reply(200, (RequestOptions options) {
        receiptsPath = options.uri.path;
        return <String, dynamic>{'items': <Map<String, dynamic>>[], 'total': 0};
      });
    });
    final store = InMemoryTokenStore()..debugOverwrite(accessToken: 'tok-old');
    await pumpAccount(tester, dio, store);
    await tester.tap(rowAction('微生物检测部', '切换'));
    await tester.pumpAndSettle();
    expect(raw, isNotNull);
    expect(raw!['tenantId'], 't-2');
    // token 换发落 store（新租户数据域），保持 Authed 不回登录页。
    expect(store.readAccessToken(), completion('tok-t2'));
    // 会话重取 + 接样列表整表刷新。
    expect(meCount, 2);
    expect(receiptsPath, '/api/receipts');
    expect(find.text('已切换到 微生物检测部'), findsOneWidget);
  });

  testWidgets('切换失败：错误文案 + token 不动 + 不刷新', (tester) async {
    var meCount = 0;
    String? receiptsPath;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/auth/me', (server) {
      server.reply(200, (RequestOptions options) {
        meCount++;
        return sessionJson();
      });
    });
    adapter.onPost('/api/auth/switch-tenant', (server) {
      server.reply(409, <String, dynamic>{'message': 'conflict'});
    });
    adapter.onGet('/api/receipts', (server) {
      return server.reply(200, (RequestOptions options) {
        receiptsPath = options.uri.path;
        return <String, dynamic>{'items': <Map<String, dynamic>>[], 'total': 0};
      });
    });
    final store = InMemoryTokenStore()..debugOverwrite(accessToken: 'tok-old');
    await pumpAccount(tester, dio, store);
    await tester.tap(rowAction('微生物检测部', '切换'));
    await tester.pumpAndSettle();
    expect(find.text('切换失败，请重试'), findsOneWidget);
    expect(store.readAccessToken(), completion('tok-old'));
    expect(meCount, 1);
    expect(receiptsPath, isNull);
  });
}
