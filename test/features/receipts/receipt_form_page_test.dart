import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/receipt_form_page.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import '../../support/receipt_fixtures.dart';

SampleReceipt receiptExisting() => standardSerializers.deserializeWith(
  SampleReceipt.serializer,
  receiptJson(),
)!;

void main() {
  Future<void> pumpForm(
    WidgetTester tester,
    Dio dio, {
    SampleReceipt? existing,
    DioAdapter? adapter,
  }) async {
    // adapter 传参用例自挂路由；不传则按 existing 挂默认回包。
    // 0.6.1 现实：DioAdapter(dio:) 构造即接管 httpClientAdapter，晚建者胜——
    // pumpForm 内再建一个会盖掉用例自建的 adapter（路由计数/捕获全落空）。
    // 表单 7 必填+3 多行+按钮总高超出默认 800x600 试面，ListView sliver
    // 视口外子项不进树（保存按钮 tap 找不到）——拉高试面（T4 同款）。
    tester.view.physicalSize = const Size(800, 1600);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final ad =
        adapter ?? DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    if (adapter == null) {
      if (existing != null) {
        ad.onPut(
          '/api/receipts/r-1',
          (server) => server.reply(200, receiptJson()),
        );
      } else {
        ad.onPost(
          '/api/receipts',
          (server) => server.reply(200, receiptJson()),
        );
      }
    }
    await tester.pumpWidget(
      ProviderScope(
        overrides: [dioProvider.overrideWithValue(dio)],
        child: MaterialApp(home: ReceiptFormPage(existing: existing)),
      ),
    );
  }

  testWidgets('创建：必填全填 → POST 成功（// fn: M03.F01.I02 创建流）', (tester) async {
    // fn: M03.F01.I02
    CreateSampleReceiptRequest? captured;
    final dio = Dio();
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onPost('/api/receipts', (server) {
      // 0.6.1 现实：handler 体在注册期跑一次；per-request 副作用必须放
      // reply 的 data callback（fetch 期执行，options.data 即请求体）。
      // wire 形状是 JSON object（StandardJsonPlugin 把自定义 serializer 的
      // 扁平 k/v List 转成 Map，deserializeWith 反向还原），照 Map 解。
      // UrlRequestMatcher 默认不比 method——成功后列表刷新的 GET
      // /api/receipts 也落本路由，捕获须按 method 过滤。
      server.reply(200, (RequestOptions options) {
        if (options.method == 'POST') {
          captured = standardSerializers.deserializeWith(
            CreateSampleReceiptRequest.serializer,
            options.data as Map<String, dynamic>,
          )!;
        }
        return receiptJson();
      });
    });
    await pumpForm(tester, dio, adapter: adapter);
    await tester.pumpAndSettle();
    await _fillRequired(tester);
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();
    expect(captured, isNotNull);
    expect(captured!.contractId, 'c-1');
    expect(captured!.commissionCode, 'WT-2026-099');
  });

  testWidgets('创建：必填缺失 → client 校验不上发（// fn: M03.F01.I02 校验）', (tester) async {
    // fn: M03.F01.I02
    var calls = 0;
    final dio = Dio();
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onPost('/api/receipts', (server) {
      // 计数放 data callback（fetch 期 per-request），放 handler 体只会在
      // 注册期 +1，expect(calls, 0) 必挂（0.6.1 注册即执行语义）。
      server.reply(200, (RequestOptions options) {
        calls++;
        return receiptJson();
      });
    });
    await pumpForm(tester, dio, adapter: adapter);
    await tester.pumpAndSettle();
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();
    expect(calls, 0);
    expect(find.text('必填'), findsWidgets);
  });

  testWidgets('编辑：预填 + PUT PATCH 语义（// fn: M03.F01.I02 编辑流）', (tester) async {
    // fn: M03.F01.I02
    UpdateSampleReceiptRequest? captured;
    final dio = Dio();
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onPut('/api/receipts/r-1', (server) {
      // 捕获按 method 过滤（UrlRequestMatcher 不比 method，见创建流用例注）。
      server.reply(200, (RequestOptions options) {
        if (options.method == 'PUT') {
          captured = standardSerializers.deserializeWith(
            UpdateSampleReceiptRequest.serializer,
            options.data as Map<String, dynamic>,
          )!;
        }
        return receiptJson();
      });
    });
    await pumpForm(tester, dio, existing: receiptExisting(), adapter: adapter);
    await tester.pumpAndSettle();
    expect(find.text('WT-2026-001'), findsOneWidget);
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();
    expect(captured, isNotNull);
  });

  testWidgets('双提交防抖：submitting 期再点 no-op（// fn: M03.F01.I02 防抖）', (
    tester,
  ) async {
    // fn: M03.F01.I02
    var calls = 0;
    final dio = Dio();
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onPost('/api/receipts', (server) {
      // 计数在 data callback；响应挂 200ms delay——第一泵时仍在 submitting，
      // 第二击必须 no-op，落定后 calls 仍 ==1。计数只认 POST：成功后列表
      // 刷新的 GET /api/receipts 也落本路由（UrlRequestMatcher 不比 method）。
      server.reply(200, (RequestOptions options) {
        if (options.method == 'POST') calls++;
        return receiptJson();
      }, delay: const Duration(milliseconds: 200));
    });
    await pumpForm(tester, dio, adapter: adapter);
    await _fillRequired(tester); // 不填会被 client 校验拦下，防抖无从谈起
    await tester.tap(find.byType(FilledButton)); // 首提 → 进 submitting
    await tester.pump();
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.tap(find.byType(FilledButton)); // submitting 期再点
    await tester.pump(const Duration(milliseconds: 50)); // 仍未出响应
    expect(calls, 1);
    await tester.pumpAndSettle(); // 响应落地 → Success → pop
    expect(calls, 1);
  });
}

Future<void> _fillRequired(WidgetTester tester) async {
  Future<void> fill(String label, String text) async {
    await tester.enterText(find.widgetWithText(TextFormField, label), text);
  }

  await fill('委托编号', 'WT-2026-099');
  await fill('委托日期', '2026-10-06');
  await fill('报告类别', 'xkkz');
  await fill('接收人', '王接收');
  await fill('样品来源', '见证取样');
  await fill('检测性质', '常规');
  await fill('合同 ID', 'c-1');
}
