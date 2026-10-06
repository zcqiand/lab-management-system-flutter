import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/receipt_detail_page.dart';
import 'package:lab_management_system_flutter/features/receipts/receipt_form_page.dart';

import '../../fakes/throwing_adapter.dart';
import '../../support/receipt_fixtures.dart';

void main() {
  Future<void> pumpDetail(
    WidgetTester tester,
    Dio dio, {
    String receiptId = 'r-1',
  }) async {
    // 字段表 21 行 + 样品区 + 时间线总高超出默认 800x600 逻辑试面，ListView
    // 视口外子项不进树（sliver 懒装配）——拉高试面让全部区块一次进树。
    tester.view.physicalSize = const Size(800, 2400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onGet(
      '/api/receipts/r-1',
      (server) => server.reply(200, receiptJson()),
    );
    adapter.onGet(
      '/api/receipts/r-1/history',
      (server) => server.reply(200, [
        historyJson(action: 'submit', at: '2026-10-01T10:00:00'),
        historyJson(
          action: 'withdraw',
          at: '2026-10-01T09:00:00',
          from: 'taskAssignment',
          to: 'receiving',
        ),
      ]),
    );
    adapter.onGet(
      '/api/samples',
      (server) => server.reply(200, samplesListJson([sampleJson()])),
    );
    await tester.pumpWidget(
      ProviderScope(
        overrides: [dioProvider.overrideWithValue(dio)],
        child: MaterialApp(home: ReceiptDetailPage(receiptId: receiptId)),
      ),
    );
  }

  testWidgets('详情字段表 + 样品区渲染（// fn: M03.F09.I01）', (tester) async {
    // fn: M03.F09.I01
    final dio = Dio();
    await pumpDetail(tester, dio);
    await tester.pumpAndSettle();
    expect(find.text('WT-2026-001'), findsOneWidget);
    expect(find.text('示例工程'), findsOneWidget);
    expect(find.text('—'), findsWidgets); // 缺席字段显示 —
    expect(find.text('S-001'), findsOneWidget); // 样品区
  });

  testWidgets('时间线按 at 倒序 + 动作中文标签（// fn: M03.F01.I06，双挂 M03.F09.I02）', (
    tester,
  ) async {
    // fn: M03.F01.I06
    // fn: M03.F09.I02
    final dio = Dio();
    await pumpDetail(tester, dio);
    await tester.pumpAndSettle();
    // 10:00 的 submit 在 09:00 的 withdraw 之前（倒序）。T7 起详情页新增
    // act 按钮组（receiving 阶段渲染「提交/退回/撤回」FilledButton），裸
    // find.text 与时间线同名词撞车（一找多必炸 getTopLeft）——只认时间线
    // ListTile 内的文本。
    final submitTop = tester
        .getTopLeft(
          find.descendant(of: find.byType(ListTile), matching: find.text('提交')),
        )
        .dy;
    final withdrawTop = tester
        .getTopLeft(
          find.descendant(of: find.byType(ListTile), matching: find.text('撤回')),
        )
        .dy;
    expect(submitTop, lessThan(withdrawTop));
    // 页面副标题含操作人（接收登记 → 任务分配 · alice），用 textContaining 断言
    expect(find.textContaining('接收登记 → 任务分配'), findsOneWidget);
  });

  testWidgets('加载失败 → 错误态 + 重试（// fn: M03.F01.I06 错误分支）', (tester) async {
    // fn: M03.F01.I06
    // pumpDetail 会挂 DioAdapter 盖掉预装的 ThrowingAdapter，错误分支直接
    // 装配（同 receipts_list_page_test 错误用例形态）。
    final dio = Dio()..httpClientAdapter = ThrowingAdapter();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [dioProvider.overrideWithValue(dio)],
        child: const MaterialApp(home: ReceiptDetailPage(receiptId: 'r-1')),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('无法连接服务器'), findsOneWidget);
    expect(find.text('重试'), findsOneWidget);
  });

  testWidgets('编辑保存成功 → 详情重载显示新值（// fn: M03.F01.I02）', (tester) async {
    // fn: M03.F01.I02
    // I-2 回归钉：编辑入口在详情页，保存成功 pop 回详情必须重载——否则用户
    // 改了委托编号回来看到旧值，「像没保存」。可变 mock 体：PUT 落地后翻新
    // GET 回包，详情重载才拿得到新值（Form Success 的列表 silent 刷新也走
    // GET /api/receipts，一并注册）。
    final dio = Dio();
    // matchMethod: true 必开（receipt_delete_test 同款救援）——GET/PUT 同路径
    // /api/receipts/r-1，默认 matcher 不比 method 且 last-match-wins，PUT 路由
    // 会吞掉详情 GET（计数落空、回包走 PUT 回调）。
    final adapter = DioAdapter(
      dio: dio,
      matcher: const UrlRequestMatcher(matchMethod: true),
    );
    var detailCalls = 0;
    var current = receiptJson();
    adapter.onGet('/api/receipts/r-1', (server) {
      server.reply(200, (RequestOptions options) {
        detailCalls++;
        return current;
      });
    });
    adapter.onGet(
      '/api/receipts/r-1/history',
      (server) => server.reply(200, <dynamic>[]),
    );
    adapter.onGet(
      '/api/samples',
      (server) => server.reply(200, samplesListJson([])),
    );
    adapter.onGet(
      '/api/receipts',
      (server) => server.reply(200, receiptListJson(const [])),
    );
    adapter.onPut('/api/receipts/r-1', (server) {
      server.reply(200, (RequestOptions options) {
        if (options.method == 'PUT') {
          current = receiptJson(overrides: {'commissionCode': 'WT-2026-077'});
        }
        return current;
      });
    });
    // act 按钮组/编辑入口在 ListView 尾部，拉高试面（同 pumpDetail 姿态）。
    tester.view.physicalSize = const Size(800, 2400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      ProviderScope(
        overrides: [dioProvider.overrideWithValue(dio)],
        child: const MaterialApp(home: ReceiptDetailPage(receiptId: 'r-1')),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('WT-2026-001'), findsOneWidget);

    await tester.tap(find.text('编辑接样单'));
    await tester.pumpAndSettle();
    await tester.enterText(
      find.widgetWithText(TextFormField, '委托编号'),
      'WT-2026-077',
    );
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();

    expect(find.byType(ReceiptFormPage), findsNothing); // 已 pop 回详情
    expect(detailCalls, 2); // 初次 + 保存后重载
    expect(find.text('WT-2026-077'), findsOneWidget); // 详情字段已更新
  });
}
