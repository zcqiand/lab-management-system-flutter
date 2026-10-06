import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/misc.dart' show Override;

import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/receipts_list_page.dart';
import 'package:lab_management_system_flutter/features/receipts/task_queue_page.dart';

import '../../fakes/in_memory_token_store.dart';
import '../../fakes/throwing_adapter.dart';
import '../../support/receipt_fixtures.dart';
import '../../support/task_assignment_fixtures.dart';

void main() {
  Future<void> pumpQueue(
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
        child: const MaterialApp(home: TaskQueuePage()),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('队列加载渲染：已安排/未安排行 + 状态徽标（@entry I01 证明）', (tester) async {
    // fn: M03.F02.I01
    final (dio, adapter) = receiptRig();
    adapter.onGet(
      '/api/receipts',
      (server) => server.reply(
        200,
        taskQueueJson([
          receiptInTaskAssignmentJson(id: 'r-1'),
          receiptInTaskAssignmentJson(
            id: 'r-2',
            assignee: null,
            overrides: {'commissionCode': 'WT-2026-002'},
          ),
        ]),
      ),
    );
    await pumpQueue(tester, dio);
    // 已安排行：检测人员 + 计划日期上屏
    expect(find.textContaining('WT-2026-001'), findsOneWidget);
    expect(find.text('张检测 · 2026-10-10'), findsOneWidget);
    // 未安排行：徽标文案
    expect(find.text('未安排'), findsOneWidget);
    expect(find.text('待安排检测人员'), findsOneWidget);
  });

  testWidgets('keyword 提交：query 携带 flowStatus=taskAssignment + keyword', (
    tester,
  ) async {
    final (dio, adapter) = receiptRig();
    final queries = <Map<String, String>>[];
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        queries.add(options.uri.queryParameters);
        return taskQueueJson([receiptInTaskAssignmentJson()]);
      });
    });
    await pumpQueue(tester, dio);
    // query 编码走 wireName 蛇形（body 解码实证驼峰亦收——枚举双面序列化）
    expect(queries.single['flowStatus'], 'task_assignment'); // 固定阶段过滤

    await tester.enterText(find.widgetWithText(TextField, '关键词'), '示例');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(queries.length, 2);
    expect(queries.last['flowStatus'], 'task_assignment');
    expect(queries.last['keyword'], '示例');
  });

  testWidgets('keyword 服务端过滤：提交后第二轮 GET 只回匹配行', (tester) async {
    final (dio, adapter) = receiptRig();
    // 单 handler 按 query 条件回包（同路径多次注册是 LIFO 消费，不做队列）
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        final filtered = options.uri.queryParameters['keyword'] == '示例';
        return taskQueueJson([
          receiptInTaskAssignmentJson(
            id: 'r-1',
            overrides: {'projectName': '示例大厦'},
          ),
          if (!filtered)
            receiptInTaskAssignmentJson(
              id: 'r-2',
              assignee: null,
              overrides: {'projectName': '无关工程'},
            ),
        ]);
      });
    });
    await pumpQueue(tester, dio);
    expect(find.textContaining('无关工程'), findsOneWidget);

    await tester.enterText(find.widgetWithText(TextField, '关键词'), '示例');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(find.textContaining('示例大厦'), findsOneWidget);
    expect(find.textContaining('无关工程'), findsNothing);
  });

  testWidgets('empty 态渲染', (tester) async {
    final (dio, adapter) = receiptRig();
    adapter.onGet(
      '/api/receipts',
      (server) => server.reply(200, taskQueueJson(const [])),
    );
    await pumpQueue(tester, dio);
    expect(find.text('暂无待分配任务'), findsOneWidget);
  });

  testWidgets('网络不可达 → 「无法连接服务器」+ 重试', (tester) async {
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    dio.httpClientAdapter = ThrowingAdapter();
    await pumpQueue(tester, dio);
    expect(find.text('无法连接服务器'), findsOneWidget);
    expect(find.text('重试'), findsOneWidget);
  });

  testWidgets('接样列表 appbar 入口 → 队列页入栈', (tester) async {
    final (dio, adapter) = receiptRig();
    // 同路径重注册是替换非排队：单 handler 按 query 分流——队列请求带
    // flowStatus=task_assignment，接样列表首载不带过滤。
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        final isQueue =
            options.uri.queryParameters['flowStatus'] == 'task_assignment';
        return isQueue
            ? taskQueueJson([receiptInTaskAssignmentJson()])
            : receiptListJson([receiptJson(id: 'r-1')]);
      });
    });
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          dioProvider.overrideWithValue(dio),
          tokenStoreProvider.overrideWithValue(InMemoryTokenStore()),
          sessionGuardProvider.overrideWithValue(SessionGuard()),
        ],
        child: const MaterialApp(home: ReceiptsListPage()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(TaskQueuePage), findsNothing);
    await tester.tap(find.byTooltip('任务分配'));
    await tester.pumpAndSettle();
    expect(find.byType(TaskQueuePage), findsOneWidget);
    // 队列形状专属断言：已安排行的人员·日期 subtitle
    expect(find.text('张检测 · 2026-10-10'), findsOneWidget);
  });
}
