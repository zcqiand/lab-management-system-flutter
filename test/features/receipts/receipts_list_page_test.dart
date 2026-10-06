import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
// riverpod 3 把 Override 挪到 misc 导出面（flutter_riverpod.dart 不再带它）。
import 'package:flutter_riverpod/misc.dart' show Override;

import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/receipts_list_page.dart';

import '../../fakes/in_memory_token_store.dart';
import '../../fakes/throwing_adapter.dart';
import '../../support/receipt_fixtures.dart';

void main() {
  Future<void> pumpList(
    WidgetTester tester,
    Dio dio, [
    List<Override> extraOverrides = const [],
  ]) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          dioProvider.overrideWithValue(dio),
          tokenStoreProvider.overrideWithValue(InMemoryTokenStore()),
          sessionGuardProvider.overrideWithValue(SessionGuard()),
          ...extraOverrides,
        ],
        child: const MaterialApp(home: ReceiptsListPage()),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('I01 列表加载渲染（@entry I01 证明）', (tester) async {
    // fn: M03.F01.I01
    final (dio, adapter) = receiptRig();
    adapter.onGet(
      '/api/receipts',
      (server) => server.reply(200, receiptListJson([receiptJson(id: 'r-1')])),
    );
    await pumpList(tester, dio);
    expect(find.text('WT-2026-001（示例工程）'), findsOneWidget);
    expect(find.text('xkkz · 接收登记 · 王接收'), findsOneWidget);
  });

  testWidgets('empty/error/loading 三态渲染', (tester) async {
    final (dio, adapter) = receiptRig();
    adapter.onGet(
      '/api/receipts',
      (server) => server.reply(200, receiptListJson(const [])),
    );
    await pumpList(tester, dio);
    expect(find.text('暂无接样单'), findsOneWidget);
  });

  testWidgets('error 态渲染 + 重试按钮', (tester) async {
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'))
      ..httpClientAdapter = ThrowingAdapter();
    await pumpList(tester, dio);
    expect(find.text('无法连接服务器'), findsOneWidget);
    expect(find.text('重试'), findsOneWidget);
  });
}
