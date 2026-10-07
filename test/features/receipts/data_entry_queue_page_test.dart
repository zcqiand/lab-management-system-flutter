import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';

import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/data_entry_queue_page.dart';
import 'package:lab_management_system_flutter/features/receipts/data_entry_sheet.dart';
import 'package:lab_management_system_flutter/features/receipts/receipts_list_page.dart';

import '../../fakes/in_memory_token_store.dart';
import '../../fakes/throwing_adapter.dart';
import '../../support/data_entry_fixtures.dart';
import '../../support/receipt_fixtures.dart';

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
        child: const MaterialApp(home: DataEntryQueuePage()),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('队列加载渲染：行 title + 接收信息 subtitle（@entry I01 证明）', (tester) async {
    // fn: M03.F03.I01
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, receiptListJson([receiptInDataEntryJson()]));
    });
    await pumpQueue(tester, dio);
    expect(find.textContaining('WT-2026-001'), findsOneWidget);
    expect(find.text('王接收 · 2026-10-01'), findsOneWidget);
  });

  testWidgets('keyword 提交：query 携带 flowStatus=data_entry + keyword', (
    tester,
  ) async {
    final (dio, adapter) = receiptRig();
    final queries = <Map<String, String>>[];
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        queries.add(options.uri.queryParameters);
        return receiptListJson([receiptInDataEntryJson()]);
      });
    });
    await pumpQueue(tester, dio);
    // query 编码走 wireName 蛇形（F02 同款实证）
    expect(queries.single['flowStatus'], 'data_entry');

    await tester.enterText(find.widgetWithText(TextField, '关键词'), '示例');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(queries.length, 2);
    expect(queries.last['flowStatus'], 'data_entry');
    expect(queries.last['keyword'], '示例');
  });

  testWidgets('keyword 服务端过滤：提交后第二轮 GET 只回匹配行', (tester) async {
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        final filtered = options.uri.queryParameters['keyword'] == '示例';
        return receiptListJson([
          receiptInDataEntryJson(id: 'r-1', overrides: {'projectName': '示例大厦'}),
          if (!filtered)
            receiptInDataEntryJson(
              id: 'r-2',
              overrides: {
                'projectName': '无关工程',
                'commissionCode': 'WT-2026-002',
              },
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
      (server) => server.reply(200, receiptListJson(const [])),
    );
    await pumpQueue(tester, dio);
    expect(find.text('暂无待录入任务'), findsOneWidget);
  });

  testWidgets('网络不可达 → 「无法连接服务器」+ 重试', (tester) async {
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    dio.httpClientAdapter = ThrowingAdapter();
    await pumpQueue(tester, dio);
    expect(find.text('无法连接服务器'), findsOneWidget);
    expect(find.text('重试'), findsOneWidget);
  });

  testWidgets('行点击 → 录入 sheet 入栈，目录三件上屏（I01 sheet 入口接线）', (tester) async {
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, receiptListJson([receiptInDataEntryJson()]));
    });
    adapter.onGet('/api/samples', (server) {
      server.reply(200, samplesListJson([sampleJson(id: 's-1')]));
    });
    adapter.onGet('/api/inspection/parameters', (server) {
      server.reply(200, parametersListJson([inspectionParameterJson()]));
    });
    adapter.onGet('/api/test-records', (server) {
      server.reply(200, testRecordsListJson(const []));
    });
    await pumpQueue(tester, dio);
    expect(find.byType(DataEntrySheet), findsNothing);
    await tester.tap(find.textContaining('WT-2026-001'));
    await tester.pumpAndSettle();
    expect(find.byType(DataEntrySheet), findsOneWidget);
    // 目录渲染：样品码 + 参数名
    expect(find.textContaining('S-001'), findsWidgets);
    expect(find.textContaining('抗压强度'), findsWidgets);
  });

  testWidgets('接样列表 appbar 入口 → 队列页入栈', (tester) async {
    final (dio, adapter) = receiptRig();
    // 同路径重注册是替换非排队：单 handler 按 query 分流——队列请求带
    // flowStatus=data_entry，接样列表首载不带过滤。
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        final isQueue =
            options.uri.queryParameters['flowStatus'] == 'data_entry';
        return isQueue
            ? receiptListJson([receiptInDataEntryJson()])
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
    expect(find.byType(DataEntryQueuePage), findsNothing);
    await tester.tap(find.byTooltip('数据录入'));
    await tester.pumpAndSettle();
    expect(find.byType(DataEntryQueuePage), findsOneWidget);
    expect(find.textContaining('WT-2026-001'), findsOneWidget);
  });
}
