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

  Future<void> pumpExt(WidgetTester tester, {Sample? sample}) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [dioProvider.overrideWithValue(dio)],
        child: MaterialApp(
          home: SampleExtPage(
            sample: sample ?? sampleWithExt,
            categoryCode: 'xkkz',
          ),
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
    // 清空字段必须给非空原值才钉得住条款三：slump 原值 '120'，清空后保存
    // 应回退原值——「键仍在」不够，存在即覆盖的坏合并变体也能过「键仍在」。
    final sampleWithSlump = standardSerializers.deserializeWith(
      Sample.serializer,
      sampleJson(ext: {'strength': 'C30', 'slump': '120'}),
    )!;
    await pumpExt(tester, sample: sampleWithSlump);
    await tester.pumpAndSettle();
    await tester.enterText(find.widgetWithText(TextFormField, '坍落度'), '');
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();
    expect(putCalls, 1);
    expect(putBody!.ext.keys, contains('strength'));
    expect(putBody!.ext['slump'], '120'); // 清空 ≠ 抹掉：回退原值
  });

  testWidgets('保存成功回详情（pop）+ 详情重载', (tester) async {
    await pumpExt(tester);
    await tester.pumpAndSettle();
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();
    expect(find.text('保存中'), findsNothing); // Saving 态已过
  });

  testWidgets('跨样品渗漏回归：ext(A) 不保存返回 → ext(B) 保存不带 A 的值（// fn: M03.F01.I07）', (
    tester,
  ) async {
    // fn: M03.F01.I07
    // C-1 回归钉（终审复现路径，同一 ProviderScope 内 push/pop）：provider
    // keepAlive 时 ext(A) 页 state 停在 Ready(A)，push ext(B) 首帧以陈旧
    // Ready(A) 建 controller（putIfAbsent 永不刷新），不动表单直接保存会把
    // A 的值覆写进 B 的 PUT 体——渗漏变体此处必红（拿到 A 的 '120'）。
    // autoDispose 后 push B 拿全新 Loading，controller 以 B 原值创建。
    final sampleA = standardSerializers.deserializeWith(
      Sample.serializer,
      sampleJson(id: 's-1', ext: {'slump': '120'}),
    )!;
    final sampleB = standardSerializers.deserializeWith(
      Sample.serializer,
      sampleJson(id: 's-2', ext: {'slump': '200'}),
    )!;
    // 闭包按引用捕获：第二次 open-ext 时已指向 B。
    var pushed = sampleA;
    adapter.onPut('/api/samples/s-2/ext', (server) {
      server.reply(200, (RequestOptions options) {
        if (options.method == 'PUT') {
          putBody = standardSerializers.deserializeWith(
            UpdateSampleExtRequest.serializer,
            options.data as Map<String, dynamic>,
          )!;
        }
        return sampleJson(id: 's-2', ext: {'slump': '200'});
      });
    });
    await tester.pumpWidget(
      ProviderScope(
        overrides: [dioProvider.overrideWithValue(dio)],
        child: MaterialApp(
          home: Builder(
            builder: (context) => TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (_) =>
                      SampleExtPage(sample: pushed, categoryCode: 'xkkz'),
                ),
              ),
              child: const Text('open-ext'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('open-ext'));
    await tester.pumpAndSettle(); // ext(A) 就绪：controller 以 A 值建
    await tester.pageBack(); // 不保存返回
    await tester.pumpAndSettle(); // pop；autoDispose 在此 dispose provider
    pushed = sampleB;
    await tester.tap(find.text('open-ext'));
    await tester.pumpAndSettle(); // ext(B) 就绪
    await tester.tap(find.byType(FilledButton)); // 不动表单直接保存
    await tester.pumpAndSettle();
    expect(putBody, isNotNull);
    expect(putBody!.ext['slump'], '200'); // B 原键原值，A 的 '120' 不得渗入
  });
}
