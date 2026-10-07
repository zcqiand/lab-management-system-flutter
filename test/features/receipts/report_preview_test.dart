import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/report_preview_controller.dart';
import 'package:lab_management_system_flutter/features/receipts/report_preview_page.dart';
import 'package:lab_management_system_flutter/features/receipts/sample_ext_page.dart';

import '../../support/data_entry_fixtures.dart';
import '../../support/receipt_fixtures.dart';

/// REQ-2026-016 M03.F09.I03：报告预览（数据面摘要）。
/// 装载 = samples?receiptId 单次取 → 逐样品 test-records?sampleId 归集 →
/// 门字段（reportNames by categoryCode，source=receipt 滤掉，首样品 ext 缺
/// key 出补录清单）。任何失败清空整体进错误态。纯流测试用普通 test()
/// （REQ-2026-015 实证：testWidgets FakeAsync 直 await dio 挂死）。
void main() {
  /// rig：samples s-1（ext 齐）+ s-2（ext 齐），记录 s-1×2 / s-2×1。
  (ProviderContainer, DioAdapter) rig() {
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onGet('/api/samples', (server) {
      server.reply(
        200,
        samplesListJson([
          sampleJson(id: 's-1', ext: const {'slump': '180'}),
          sampleJson(
            id: 's-2',
            overrides: const {'sampleCode': 'S-002'},
            ext: const {'slump': '200'},
          ),
        ]),
      );
    });
    adapter.onGet('/api/test-records', (server) {
      server.reply(200, (RequestOptions options) {
        final sid = options.uri.queryParameters['sampleId'];
        return testRecordsListJson(
          sid == 's-1'
              ? [
                  testRecordJson(id: 'tr-1'),
                  testRecordJson(
                    id: 'tr-2',
                    parameterCode: 'IP-002',
                    result: '46.1',
                    verdict: null,
                  ),
                ]
              : [testRecordJson(id: 'tr-3', sampleId: 's-2')],
        );
      });
    });
    adapter.onGet('/api/report-names', (server) {
      server.reply(
        200,
        reportNamesJson(
          extFieldDefs: [extFieldDefJson(key: 'slump', label: '坍落度')],
        ),
      );
    });
    final container = ProviderContainer(
      overrides: [dioProvider.overrideWithValue(dio)],
    );
    return (container, adapter);
  }

  /// 门场景：样品 ext 空（缺 slump）+ 一个 source=receipt 定义（应滤掉）。
  (ProviderContainer, DioAdapter) gateRig() {
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onGet('/api/samples', (server) {
      server.reply(200, samplesListJson([sampleJson(id: 's-1')]));
    });
    adapter.onGet('/api/test-records', (server) {
      server.reply(200, testRecordsListJson(const []));
    });
    adapter.onGet('/api/report-names', (server) {
      server.reply(
        200,
        reportNamesJson(
          extFieldDefs: [
            extFieldDefJson(key: 'slump', label: '坍落度'),
            extFieldDefJson(
              key: 'srcOnly',
              label: '登记侧字段',
              source: 'receipt',
            ),
          ],
        ),
      );
    });
    final container = ProviderContainer(
      overrides: [dioProvider.overrideWithValue(dio)],
    );
    return (container, adapter);
  }

  /// autoDispose 保活 + 装载（listen 持引用，read 拿 notifier/state）。
  Future<void> loadPreview(
    ProviderContainer container, {
    String receiptId = 'r-1',
    String categoryCode = 'xkkz',
  }) async {
    container.listen<ReportPreviewState>(
      reportPreviewControllerProvider,
      (_, _) {},
    );
    await container
        .read(reportPreviewControllerProvider.notifier)
        .load(receiptId: receiptId, categoryCode: categoryCode);
  }

  Future<void> pumpPreview(WidgetTester tester, Dio dio) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [dioProvider.overrideWithValue(dio)],
        child: const MaterialApp(
          home: ReportPreviewPage(receiptId: 'r-1', categoryCode: 'xkkz'),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  test('装载：逐样品归集记录 + 门字段齐（F09.I03 证明）', () async {
    // fn: M03.F09.I03
    final (container, _) = rig();
    addTearDown(container.dispose);
    await loadPreview(container);
    final s = container.read(reportPreviewControllerProvider);
    expect(s, isA<ReportPreviewReady>());
    final ready = s as ReportPreviewReady;
    expect(ready.samples.length, 2);
    expect(ready.samples[1].sampleCode, 'S-002');
    // 逐样品归集：s-1 两条（含未判定 verdict null），s-2 一条。
    expect(ready.recordsBySample['s-1']!.length, 2);
    expect(ready.recordsBySample['s-1']![1].verdict, isNull);
    expect(ready.recordsBySample['s-2']!.length, 1);
    expect(ready.recordsBySample['s-2']![0].id, 'tr-3');
    // ext 齐 → 门不开。
    expect(ready.gateFormFields, isEmpty);
  });

  test('门判定：缺 key 出补录字段清单（receipt 源滤掉）', () async {
    final (container, _) = gateRig();
    addTearDown(container.dispose);
    await loadPreview(container);
    final s = container.read(reportPreviewControllerProvider);
    final ready = s as ReportPreviewReady;
    expect(ready.gateFormFields.map((d) => d.key), ['slump']);
    expect(
      ready.gateFormFields.map((d) => d.key),
      isNot(contains('srcOnly')),
    );
  });

  test('装载失败：整体清空进错误态（不留半写）', () async {
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onGet('/api/samples', (server) {
      server.reply(
        200,
        samplesListJson([sampleJson(id: 's-1', ext: const {'slump': '180'})]),
      );
    });
    adapter.onGet('/api/test-records', (server) {
      server.reply(500, <String, dynamic>{'message': 'boom'});
    });
    adapter.onGet('/api/report-names', (server) {
      server.reply(
        200,
        reportNamesJson(extFieldDefs: [extFieldDefJson(key: 'slump')]),
      );
    });
    final container = ProviderContainer(
      overrides: [dioProvider.overrideWithValue(dio)],
    );
    addTearDown(container.dispose);
    await loadPreview(container);
    final s = container.read(reportPreviewControllerProvider);
    expect(s, isA<ReportPreviewError>());
    expect((s as ReportPreviewError).message, contains('预览失败'));
  });

  testWidgets('报告预览页：按样品分组渲染判定与结果', (tester) async {
    final (container, _) = rig();
    addTearDown(container.dispose);
    await pumpPreview(tester, container.read(dioProvider));
    // 分组 section 头 + 记录行三段 + 未判定占位。
    expect(find.text('样品 S-001'), findsOneWidget);
    expect(find.text('样品 S-002'), findsOneWidget);
    expect(find.text('IP-001'), findsNWidgets(2));
    expect(find.text('结果 44.2 · 要求 ≥42.5MPa'), findsNWidgets(2));
    expect(find.text('合格'), findsNWidgets(2));
    expect(find.text('—'), findsOneWidget); // tr-2 verdict null
  });

  testWidgets('补录门：缺 key 先出补录不渲染预览', (tester) async {
    final (container, _) = gateRig();
    addTearDown(container.dispose);
    await pumpPreview(tester, container.read(dioProvider));
    expect(find.text('去补录'), findsOneWidget);
    expect(find.byType(ListTile), findsNothing); // 预览列表不渲染
    await tester.tap(find.text('去补录'));
    await tester.pumpAndSettle();
    expect(find.byType(SampleExtPage), findsOneWidget); // 复用已上线补录页
  });

  testWidgets('错误态可重试：重试重发请求', (tester) async {
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onGet('/api/samples', (server) {
      server.reply(200, samplesListJson([sampleJson(id: 's-1')]));
    });
    var hits = 0;
    adapter.onGet('/api/test-records', (server) {
      server.reply(500, (RequestOptions options) {
        hits++;
        return <String, dynamic>{'message': 'boom'};
      });
    });
    adapter.onGet('/api/report-names', (server) {
      server.reply(
        200,
        reportNamesJson(extFieldDefs: [extFieldDefJson(key: 'slump')]),
      );
    });
    final container = ProviderContainer(
      overrides: [dioProvider.overrideWithValue(dio)],
    );
    addTearDown(container.dispose);
    await pumpPreview(tester, dio);
    expect(find.text('预览失败'), findsOneWidget);
    expect(hits, 1);
    await tester.tap(find.text('重试'));
    await tester.pumpAndSettle();
    expect(hits, 2); // 重试真的重发了装载请求
    expect(find.text('预览失败'), findsOneWidget); // 仍失败仍可再试
  });
}
