import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/sample_ext_page.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import '../../support/receipt_fixtures.dart';

Sample get sampleWithExt => standardSerializers.deserializeWith(
  Sample.serializer,
  sampleJson(ext: {'strength': 'C30'}),
)!;

void main() {
  late Dio dio;
  late DioAdapter adapter;
  var putCalls = 0;
  UpdateSampleExtRequest? putBody;

  Future<void> pumpExt(WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [dioProvider.overrideWithValue(dio)],
        child: MaterialApp(
          home: SampleExtPage(sample: sampleWithExt, categoryCode: 'xkkz'),
        ),
      ),
    );
  }

  setUp(() {
    dio = Dio();
    adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    putCalls = 0;
    putBody = null;
    adapter.onGet('/api/report-names', (server) {
      server.reply(
        200,
        reportNamesJson(
          extFieldDefs: [
            extFieldDefJson(key: 'slump', label: '坍落度', type: 'text'),
            extFieldDefJson(key: 'usage', label: '用量', type: 'number'),
            extFieldDefJson(key: 'madeDate', label: '制作日期', type: 'date'),
            extFieldDefJson(
              key: 'strength',
              label: '强度等级',
              type: 'select',
              options: ['C30', 'C35'],
            ),
          ],
        ),
      );
    });
    adapter.onPut('/api/samples/s-1/ext', (server) {
      // 计数/捕获放 reply 的 data callback：handler 体只在注册期跑一次
      // （T5/T7 配方，放 body 则 expect(putCalls, 0) 必挂）；MockServer 无
      // .data 可取，捕获走 options.data。UrlRequestMatcher 不比 method，
      // 按 method 过滤（T5 配方）。
      server.reply(200, (RequestOptions options) {
        if (options.method == 'PUT') {
          putCalls++;
          putBody = standardSerializers.deserializeWith(
            UpdateSampleExtRequest.serializer,
            options.data as Map<String, dynamic>,
          )!;
        }
        return sampleJson(ext: {'strength': 'C30'});
      });
    });
  });

  testWidgets('四型控件渲染 + source=receipt 定义被滤掉（// fn: M03.F01.I07）', (
    tester,
  ) async {
    // fn: M03.F01.I07
    await pumpExt(tester);
    await tester.pumpAndSettle();
    expect(find.text('坍落度'), findsOneWidget);
    expect(find.text('用量'), findsOneWidget);
    expect(find.text('制作日期'), findsOneWidget);
    expect(find.text('C30'), findsOneWidget); // select 下拉当前值
    expect(find.text('强度等级'), findsOneWidget);
  });

  testWidgets('必填校验不过不打端点（// fn: M03.F01.I07）', (tester) async {
    // fn: M03.F01.I07
    // 后注册者胜（0.6.1 取最后一个匹配路由，T7 配方）——盖掉 setUp 的四型回包。
    adapter.onGet('/api/report-names', (server) {
      server.reply(
        200,
        reportNamesJson(
          extFieldDefs: [
            extFieldDefJson(
              key: 'slump',
              label: '坍落度',
              type: 'text',
              required_: true,
            ),
          ],
        ),
      );
    });
    await pumpExt(tester);
    await tester.pumpAndSettle();
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();
    expect(putCalls, 0);
    expect(find.text('必填'), findsOneWidget);
  });

  testWidgets('保存合并：现有 key 全保留 + 非空覆盖（// fn: M03.F01.I07）', (tester) async {
    // fn: M03.F01.I07
    await pumpExt(tester);
    await tester.pumpAndSettle();
    await tester.enterText(find.widgetWithText(TextFormField, '坍落度'), '180');
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();
    expect(putCalls, 1);
    expect(putBody!.ext['strength'], 'C30'); // 现有 key 保留
    expect(putBody!.ext['slump'], '180'); // 非空覆盖
  });

  testWidgets('空串不抹掉已有值（// fn: M03.F01.I07）', (tester) async {
    // fn: M03.F01.I07
    await pumpExt(tester);
    await tester.pumpAndSettle();
    await tester.enterText(find.widgetWithText(TextFormField, '坍落度'), '');
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();
    expect(putCalls, 1);
    expect(putBody!.ext.keys, contains('strength'));
  });

  testWidgets('保存成功回详情（pop）+ 详情重载', (tester) async {
    await pumpExt(tester);
    await tester.pumpAndSettle();
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();
    expect(find.text('保存中'), findsNothing); // Saving 态已过
  });
}
