import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/receipts_list_page.dart';

import '../../support/receipt_fixtures.dart';

void main() {
  testWidgets('删除确认弹窗明示 CASCADE → 204 → 回列表刷新（// fn: M03.F01.I03）', (
    tester,
  ) async {
    // fn: M03.F01.I03
    var listCalls = 0;
    var deleteCalls = 0;
    final dio = Dio();
    // matchMethod: true 必开——本用例同路径双方法（GET/DELETE /api/receipts/r-1）。
    // UrlRequestMatcher 默认不比 method，且 adapter 在全部注册路由里取最后一个
    // 匹配项：DELETE 路由后注册会吞掉详情 GET（0.6.1 源码 Recording.mockResponse
    // 顺序覆盖）。data callback 滤 method 救不了路由选择，只能在 matcher 上比。
    final adapter = DioAdapter(
      dio: dio,
      matcher: const UrlRequestMatcher(matchMethod: true),
    );
    adapter.onGet('/api/receipts', (server) {
      // 计数放 data callback（fetch 期 per-request）——handler 体只在注册期跑
      // 一次（T5 配方）。路径精确匹配，本路由只吃列表 GET，无需再滤 method。
      server.reply(200, (RequestOptions options) {
        listCalls++;
        return receiptListJson([receiptJson()]);
      });
    });
    adapter.onGet(
      '/api/receipts/r-1',
      (server) => server.reply(200, receiptJson()),
    );
    adapter.onGet(
      '/api/receipts/r-1/history',
      (server) => server.reply(200, <dynamic>[]), // G-4：裸集合字面量带 <dynamic>
    );
    adapter.onGet(
      '/api/samples',
      (server) => server.reply(200, samplesListJson([])),
    );
    adapter.onDelete('/api/receipts/r-1', (server) {
      server.reply(204, (RequestOptions options) {
        deleteCalls++;
        return null; // 204 空体
      });
    });
    await tester.pumpWidget(
      ProviderScope(
        overrides: [dioProvider.overrideWithValue(dio)],
        child: const MaterialApp(home: ReceiptsListPage()),
      ),
    );
    await tester.pumpAndSettle();
    expect(listCalls, 1);

    await tester.tap(find.text('WT-2026-001（示例工程）'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('删除'));
    await tester.pumpAndSettle();
    expect(find.textContaining('将同时删除下属样品'), findsOneWidget);

    await tester.tap(find.text('取消'));
    await tester.pumpAndSettle();
    expect(deleteCalls, 0); // 取消不发 DELETE

    await tester.tap(find.byTooltip('删除'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('确认删除'));
    await tester.pumpAndSettle();
    expect(deleteCalls, 1);
    expect(find.text('接样单'), findsOneWidget); // 已回列表
    expect(listCalls, 2); // 列表已 silent 刷新
  });
}
