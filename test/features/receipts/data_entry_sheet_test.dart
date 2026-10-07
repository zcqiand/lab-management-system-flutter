import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/data_entry_queue_page.dart';
import 'package:lab_management_system_flutter/features/receipts/data_entry_sheet.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import '../../fakes/in_memory_token_store.dart';
import '../../support/data_entry_fixtures.dart';
import '../../support/receipt_fixtures.dart';

void main() {
  /// 目录三件默认 mock：样品 1 + 参数 1 + 该样品既有记录集（默认空）。
  /// [createReply] 非空时折进同路径 handler 按 method 分流——UrlRequestMatcher
  /// 默认不比 method（matchMethod:false），同路径 onPost 注册会顶掉 GET 处理器。
  void mockCatalog(
    DioAdapter adapter, {
    List<Map<String, dynamic>> records = const [],
    Map<String, dynamic> Function(RequestOptions options)? createReply,
  }) {
    adapter.onGet('/api/samples', (server) {
      server.reply(200, samplesListJson([sampleJson(id: 's-1')]));
    });
    adapter.onGet('/api/inspection/parameters', (server) {
      server.reply(200, parametersListJson([inspectionParameterJson()]));
    });
    adapter.onGet('/api/test-records', (server) {
      server.reply(200, (RequestOptions options) {
        if (createReply != null && options.method == 'POST') {
          return createReply(options);
        }
        return testRecordsListJson(records);
      });
    });
  }

  Future<void> pumpSheet(WidgetTester tester, Dio dio) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          dioProvider.overrideWithValue(dio),
          tokenStoreProvider.overrideWithValue(InMemoryTokenStore()),
          sessionGuardProvider.overrideWithValue(SessionGuard()),
        ],
        child: const MaterialApp(home: DataEntrySheet(receiptId: 'r-1')),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> fillAndSave(WidgetTester tester, {String result = '45.1'}) async {
    await tester.enterText(
      find.widgetWithText(TextField, '检测结果'),
      result,
    );
    await tester.enterText(
      find.widgetWithText(TextField, '技术要求'),
      '≥42.5MPa',
    );
    // 保存键居表单尾部：滚进视口再点。
    await tester.ensureVisible(find.text('保存'));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(FilledButton, '保存'));
    await tester.pumpAndSettle();
  }

  testWidgets('目录渲染：样品/参数默认选首项 + 空表单（@entry I02 证明）', (tester) async {
    // fn: M03.F03.I02
    final (dio, adapter) = receiptRig();
    mockCatalog(adapter);
    await pumpSheet(tester, dio);
    expect(find.textContaining('S-001'), findsWidgets);
    expect(find.textContaining('抗压强度'), findsWidgets);
    expect(find.widgetWithText(TextField, '检测结果'), findsOneWidget);
    expect(find.widgetWithText(FilledButton, '保存'), findsOneWidget);
    expect(find.text('已有记录，保存将更新'), findsNothing);
  });

  testWidgets('同键已有记录 → 表单回填已录值 + 更新标记（AC-2）', (tester) async {
    final (dio, adapter) = receiptRig();
    mockCatalog(adapter, records: [testRecordJson()]);
    await pumpSheet(tester, dio);
    expect(find.text('已有记录，保存将更新'), findsOneWidget);
    expect(
      tester.widget<TextField>(
        find.widgetWithText(TextField, '检测结果'),
      ).controller!.text,
      '44.2',
    );
    expect(
      tester.widget<TextField>(
        find.widgetWithText(TextField, '技术要求'),
      ).controller!.text,
      '≥42.5MPa',
    );
    expect(
      tester.widget<TextField>(
        find.widgetWithText(TextField, '标准代号（可选）'),
      ).controller!.text,
      'GB/T 17671',
    );
    expect(find.text('合格'), findsWidgets);
  });

  testWidgets('新键保存：POST body 字段齐 + standardCode 空串归一不传（AC-3）', (tester) async {
    CreateTestRecordRequest? captured;
    final (dio, adapter) = receiptRig();
    mockCatalog(
      adapter,
      createReply: (options) {
        captured = standardSerializers.deserializeWith(
          CreateTestRecordRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return savedTestRecordJson();
      },
    );
    await pumpSheet(tester, dio);
    await fillAndSave(tester);
    expect(captured, isNotNull);
    expect(captured!.sampleId, 's-1');
    expect(captured!.parameterCode, 'IP-001');
    expect(captured!.result, '45.1');
    expect(captured!.requirement, '≥42.5MPa');
    expect(captured!.standardCode, isNull); // 空串归一不传
    expect(captured!.verdict, isNull); // 未判定默认
    // 成功收窗（queue 侧凭 pop(true) 出 SnackBar + silent 回刷）
    expect(find.byType(DataEntrySheet), findsNothing);
  });

  testWidgets('同键再保存：PUT 既有 id，body 全量随（AC-4）', (tester) async {
    UpdateTestRecordRequest? captured;
    String? putId;
    final (dio, adapter) = receiptRig();
    mockCatalog(adapter, records: [testRecordJson(id: 'tr-1')]);
    adapter.onPut('/api/test-records/tr-1', (server) {
      server.reply(200, (RequestOptions options) {
        putId = 'tr-1';
        captured = standardSerializers.deserializeWith(
          UpdateTestRecordRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return savedTestRecordJson(id: 'tr-1');
      });
    });
    await pumpSheet(tester, dio);
    await fillAndSave(tester, result: '46.0');
    expect(putId, 'tr-1');
    expect(captured!.result, '46.0');
    expect(captured!.requirement, '≥42.5MPa');
  });

  testWidgets('verdict 改判不合格：随保存请求体提交（I03，不走 setVerdict 端点）', (tester) async {
    UpdateTestRecordRequest? captured;
    final (dio, adapter) = receiptRig();
    mockCatalog(adapter, records: [testRecordJson(id: 'tr-1')]);
    adapter.onPut('/api/test-records/tr-1', (server) {
      server.reply(200, (RequestOptions options) {
        captured = standardSerializers.deserializeWith(
          UpdateTestRecordRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return savedTestRecordJson(id: 'tr-1');
      });
    });
    await pumpSheet(tester, dio);
    // verdict 选择器：开菜单 → 选「不合格」
    await tester.tap(find.text('合格').first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('不合格').last);
    await tester.pumpAndSettle();
    await fillAndSave(tester);
    expect(captured!.verdict, '不合格');
    // setVerdict 专用端点未注册：若走了它，未注册路由即抛错——本例全绿即旁证
  });

  testWidgets('必填缺失：文案上屏且不发请求（AC-5 fail-fast）', (tester) async {
    var writeCalls = 0;
    final (dio, adapter) = receiptRig();
    // onPost 注册延后到首载之后：同路径先注册会顶掉 GET（见 mockCatalog 注释）。
    mockCatalog(adapter);
    await pumpSheet(tester, dio);
    adapter.onPost(
      '/api/test-records',
      (server) => server.reply(200, (RequestOptions options) {
        writeCalls++;
        return savedTestRecordJson();
      }),
    );
    await tester.ensureVisible(find.text('保存'));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(FilledButton, '保存'));
    await tester.pumpAndSettle();
    expect(find.text('请完整填写检测结果与技术要求'), findsOneWidget);
    expect(writeCalls, 0);
    expect(find.byType(DataEntrySheet), findsOneWidget); // 留窗
  });

  testWidgets('保存失败（500）：留窗保输入 + 错误文案上屏', (tester) async {
    final (dio, adapter) = receiptRig();
    // onPost 注册延后到首载之后：同路径先注册会顶掉 GET（见 mockCatalog 注释）；
    // 500 与 200 的 status 无法折进单 reply，只能时序错开。
    mockCatalog(adapter);
    await pumpSheet(tester, dio);
    adapter.onPost(
      '/api/test-records',
      (server) => server.reply(500, <String, dynamic>{'message': 'boom'}),
    );
    await fillAndSave(tester);
    expect(find.text('保存失败，请重试'), findsOneWidget);
    expect(find.byType(DataEntrySheet), findsOneWidget);
    // 输入仍在（可重试）
    expect(
      tester.widget<TextField>(
        find.widgetWithText(TextField, '检测结果'),
      ).controller!.text,
      '45.1',
    );
  });

  testWidgets('AC-3 全链：队列行 → sheet 保存成功 → 收窗 + SnackBar + 队列 silent 回刷', (
    tester,
  ) async {
    var queueCalls = 0;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        if (options.uri.queryParameters['flowStatus'] != 'data_entry') {
          return receiptListJson(const []);
        }
        queueCalls++;
        return receiptListJson([receiptInDataEntryJson()]);
      });
    });
    mockCatalog(adapter);
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          dioProvider.overrideWithValue(dio),
          tokenStoreProvider.overrideWithValue(InMemoryTokenStore()),
          sessionGuardProvider.overrideWithValue(SessionGuard()),
        ],
        child: const MaterialApp(home: DataEntryQueuePage()),
      ),
    );
    await tester.pumpAndSettle();
    expect(queueCalls, 1);
    await tester.tap(find.textContaining('WT-2026-001'));
    await tester.pumpAndSettle();
    // onPost 注册延后到 sheet 首载之后：同路径先注册会顶掉 GET（mockCatalog 注释）。
    adapter.onPost(
      '/api/test-records',
      (server) => server.reply(200, savedTestRecordJson()),
    );
    await fillAndSave(tester);
    // 收窗回队列：SnackBar + silent 回刷（第二轮流向 data_entry query）
    expect(find.byType(DataEntrySheet), findsNothing);
    expect(find.text('保存成功'), findsOneWidget);
    expect(queueCalls, 2);
  });
}
