import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
// riverpod 3 把 Override 挪到 misc 导出面（flutter_riverpod.dart 不再带它）。
import 'package:flutter_riverpod/misc.dart' show Override;

import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/receipts_list_page.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

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

  testWidgets('三过滤 UI 上链：keyword/contractId 回车 + flowStatus 下拉（// fn: M03.F01.I01）', (
    tester,
  ) async {
    // fn: M03.F01.I01
    // I-1 回归钉（spec §3「三过滤」在 UI 层的履约）：每次提交全量带当前过滤值，
    // query 捕获断言走 wire 形状（T5 配方）。修复前过滤区不存在 → enterText
    // 找不到控件必红。
    final (dio, adapter) = receiptRig();
    final queries = <Map<String, String>>[];
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        queries.add(options.uri.queryParameters);
        return receiptListJson([receiptJson(id: 'r-1')]);
      });
    });
    await pumpList(tester, dio);
    expect(queries.single.isEmpty, isTrue); // 初载无过滤参数

    await tester.enterText(find.widgetWithText(TextField, '关键词'), '示例');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(queries.length, 2);
    expect(queries.last['keyword'], '示例');

    await tester.enterText(find.widgetWithText(TextField, '合同 ID'), 'c-9');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(queries.length, 3);
    expect(queries.last['contractId'], 'c-9');
    expect(queries.last['keyword'], '示例'); // 已提交过滤器保持

    await tester.tap(find.byType(DropdownButtonFormField<FlowStatus?>));
    await tester.pumpAndSettle();
    await tester.tap(find.text('接收登记').last); // 菜单项（.last 跳过选中文本）
    await tester.pumpAndSettle();
    expect(queries.length, 4);
    expect(queries.last['flowStatus'], 'receiving');
    expect(queries.last['keyword'], '示例');
    expect(queries.last['contractId'], 'c-9');
  });

  testWidgets('过滤后下拉刷新保参 + 静默不闪 Loading（// fn: M03.F01.I01）', (tester) async {
    // fn: M03.F01.I01
    // T2a/T5a 收口：RefreshIndicator 走 silent 链——过滤态下刷新仍带参（T5a）
    // 且不置 Loading（T2a，飞行中列表原样在树）；T3b 同刀验证：单条短列表
    // （缺 AlwaysScrollableScrollPhysics 时拉不动、刷新不触发 → 计数必红）。
    final (dio, adapter) = receiptRig();
    final queries = <Map<String, String>>[];
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        queries.add(options.uri.queryParameters);
        return receiptListJson([receiptJson(id: 'r-1')]);
      }, delay: const Duration(milliseconds: 200));
    });
    await pumpList(tester, dio);

    await tester.enterText(find.widgetWithText(TextField, '关键词'), '示例');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    await tester.tap(find.byType(DropdownButtonFormField<FlowStatus?>));
    await tester.pumpAndSettle();
    await tester.tap(find.text('接收登记').last);
    await tester.pumpAndSettle();
    expect(queries.length, 3);

    // fling 而非 drag：实测本 Flutter 版 RefreshIndicator 只认 fling 的
    // 惯性越界（drag 不触发，探针已证）；短列表能拉出越界本身即 T3b 证明。
    // onRefresh 在 ballistic 动画中后段才触发（时刻不定）——逐帧推进到 GET
    // 发出即停，此时回包（delay 200ms）未落地，在途窗口稳定可断言。
    await tester.fling(find.byType(ListView), const Offset(0, 300), 1000);
    var guard = 0;
    while (queries.length < 4 && guard < 60) {
      await tester.pump(const Duration(milliseconds: 20));
      guard++;
    }
    expect(queries.length, 4); // 刷新已触发（短列表拉得动，T3b）
    expect(queries.last['keyword'], '示例'); // 保参（T5a）
    expect(queries.last['flowStatus'], 'receiving');
    // 静默（T2a）：飞行中列表不被 Loading 整页顶掉
    expect(find.text('WT-2026-001（示例工程）'), findsOneWidget);
    await tester.pumpAndSettle();
  });
}
