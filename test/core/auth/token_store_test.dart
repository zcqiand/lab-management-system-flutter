import 'package:flutter_test/flutter_test.dart';
import 'package:lab_management_system_flutter/core/auth/token_store.dart';

import '../../fakes/in_memory_token_store.dart';

void main() {
  group('TokenStore 接口契约（InMemory 实现）', () {
    test('save 后可读回两键', () async {
      final store = InMemoryTokenStore();
      await store.save(accessToken: 'a1', refreshToken: 'r1');
      expect(await store.readAccessToken(), 'a1');
      expect(await store.readRefreshToken(), 'r1');
    });

    test('refreshToken 可空：只存 access，读 refresh 为 null', () async {
      final store = InMemoryTokenStore();
      await store.save(accessToken: 'a1');
      expect(await store.readAccessToken(), 'a1');
      expect(await store.readRefreshToken(), isNull);
    });

    test('clear 后两键皆空', () async {
      final store = InMemoryTokenStore();
      await store.save(accessToken: 'a1', refreshToken: 'r1');
      await store.clear();
      expect(await store.readAccessToken(), isNull);
      expect(await store.readRefreshToken(), isNull);
    });

    test('debugOverwrite 构造「只剩 refreshToken」前置态', () async {
      final store = InMemoryTokenStore();
      store.debugOverwrite(refreshToken: 'r-only');
      expect(await store.readAccessToken(), isNull);
      expect(await store.readRefreshToken(), 'r-only');
    });

    test('键名常量防漂移：lab.accessToken / lab.refreshToken', () {
      expect(TokenStore.accessKey, 'lab.accessToken');
      expect(TokenStore.refreshKey, 'lab.refreshToken');
    });
  });
}
