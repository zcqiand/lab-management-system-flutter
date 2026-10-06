import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/core/auth/auth_state.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/receipt_detail_page.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import '../../support/receipt_fixtures.dart';

/// 固定认证态桩（Phase 1 login_page_test 的 _SubmittingStubController 同款）。
class _AuthedNamedController extends AuthController {
  @override
  AuthState build() => const Authed(userId: 'u-1', displayName: '测试用户');
}

/// 无操作人身份：userId/displayName 双空（restore 乐观式合法态，AuthState 注）。
/// operator 解析链 displayName→userId 双空即 null → act 按钮全禁（ADR-0019）。
class _AuthedNoNameController extends AuthController {
  @override
  AuthState build() => const Authed();
}

void main() {
  late Dio dio;
  late DioAdapter adapter;
  var actCalls = 0;
  var detailCalls = 0;
  FlowActionRequest? actBody;

  Future<void> pumpDetail(
    WidgetTester tester, {
    bool withOperatorName = true,
  }) async {
    // act 按钮组/编辑入口挂在字段表 + 流程历史区之后的 ListView 尾部，默认
    // 800x600 逻辑试面装不下（sliver 懒装配视口外不进树，T4 同款）——拉高试面。
    tester.view.physicalSize = const Size(800, 2400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          dioProvider.overrideWithValue(dio),
          authControllerProvider.overrideWith(
            withOperatorName
                ? _AuthedNamedController.new
                : _AuthedNoNameController.new,
          ),
        ],
        child: const MaterialApp(home: ReceiptDetailPage(receiptId: 'r-1')),
      ),
    );
  }

  setUp(() {
    dio = Dio();
    adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    actCalls = 0;
    detailCalls = 0;
    actBody = null;
    adapter.onGet('/api/receipts/r-1', (server) {
      // 计数放 reply 的 data callback（fetch 期 per-request）——handler 体只在
      // 注册期跑一次（T5/T6 配方），放 body 则 expect(detailCalls, 2) 必挂。
      server.reply(200, (RequestOptions options) {
        detailCalls++;
        return receiptJson();
      });
    });
    adapter.onGet(
      '/api/receipts/r-1/history',
      // 时间线留空：有流转记录时时间线也会渲染「提交/退回/撤回」文本，
      // 会和 act 按钮组的 find.text 撞车。
      (server) => server.reply(200, <dynamic>[]), // G-4：裸集合带 <dynamic>
    );
    adapter.onGet(
      '/api/samples',
      (server) => server.reply(200, samplesListJson([])),
    );
    adapter.onPost('/api/receipts/receiving/act', (server) {
      // 计数/捕获同放 data callback。本路径只有 POST 进来，无需滤 method。
      // wire 形状是 JSON object（StandardJsonPlugin 转换，T5 配方）。
      server.reply(200, (RequestOptions options) {
        actCalls++;
        actBody = standardSerializers.deserializeWith(
          FlowActionRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return <Map<String, Object>>[
          {'id': 'r-1', 'ok': true},
        ];
      });
    });
  });

  testWidgets('receiving 阶段三按钮齐全（// fn: M03.F01.I08）', (tester) async {
    // fn: M03.F01.I08
    await pumpDetail(tester);
    await tester.pumpAndSettle();
    expect(find.text('提交'), findsOneWidget);
    expect(find.text('退回'), findsOneWidget);
    expect(find.text('撤回'), findsOneWidget);
  });

  testWidgets('提交成功 → act 上发 + 详情重载（// fn: M03.F01.I04）', (tester) async {
    // fn: M03.F01.I04
    await pumpDetail(tester);
    await tester.pumpAndSettle();
    await tester.tap(find.text('提交'));
    await tester.pumpAndSettle();
    expect(actCalls, 1);
    expect(actBody!.ids, ['r-1']);
    expect(actBody!.action, FlowAction.submit);
    expect(actBody!.operator_, '测试用户'); // displayName 非空优先
    expect(detailCalls, 2); // 初次 + act 后重载
  });

  testWidgets('422 → 「当前阶段不可退回」上屏（// fn: M03.F01.I08）', (tester) async {
    // fn: M03.F01.I08
    // 后注册者胜（0.6.1 取最后一个匹配路由）——422 盖掉 setUp 的成功回包。
    adapter.onPost('/api/receipts/receiving/act', (server) {
      server.reply(422, <String, dynamic>{'message': 'no previous stage'});
    });
    await pumpDetail(tester);
    await tester.pumpAndSettle();
    await tester.tap(find.text('退回'));
    await tester.pumpAndSettle();
    expect(find.text('当前阶段不可退回'), findsOneWidget);
  });

  testWidgets('act 防抖：进行期再点 no-op（// fn: M03.F01.I08）', (tester) async {
    // fn: M03.F01.I08
    // delay 挂 reply（handler 体只在注册期跑，T5 防抖配方）——第一泵时 act
    // 仍在途，第二击必须 no-op，落定后 actCalls 仍 ==1。
    adapter.onPost('/api/receipts/receiving/act', (server) {
      server.reply(200, (RequestOptions options) {
        actCalls++;
        return <Map<String, Object>>[
          {'id': 'r-1', 'ok': true},
        ];
      }, delay: const Duration(milliseconds: 300));
    });
    await pumpDetail(tester);
    await tester.pumpAndSettle();
    await tester.tap(find.text('提交'));
    await tester.pump();
    await tester.tap(find.text('提交'), warnIfMissed: false);
    await tester.pumpAndSettle();
    expect(actCalls, 1);
  });

  testWidgets('非 receiving 阶段无 act 按钮组（// fn: M03.F01.I08）', (tester) async {
    // fn: M03.F01.I08
    adapter.onGet('/api/receipts/r-1', (server) {
      server.reply(200, (RequestOptions options) {
        detailCalls++;
        return receiptJson(flowStatus: 'taskAssignment');
      });
    });
    await pumpDetail(tester);
    await tester.pumpAndSettle();
    expect(find.text('提交'), findsNothing);
  });

  testWidgets('无操作人身份 → 按钮禁用（fail-fast，不兜底）', (tester) async {
    await pumpDetail(tester, withOperatorName: false);
    await tester.pumpAndSettle();
    final button = tester.widget<FilledButton>(
      find.ancestor(of: find.text('提交'), matching: find.byType(FilledButton)),
    );
    expect(button.onPressed, isNull);
    // Produces 要求禁用态 Tooltip「无操作人身份」提示——一并钉进断言。
    expect(find.byTooltip('无操作人身份'), findsWidgets);
  });

  testWidgets('详情 → 编辑入口：进表单且预填（// fn: M03.F01.I02）', (tester) async {
    // fn: M03.F01.I02
    await pumpDetail(tester);
    await tester.pumpAndSettle();
    await tester.tap(find.text('编辑接样单'));
    await tester.pumpAndSettle();
    expect(find.text('判定依据（每行一项）'), findsOneWidget); // 表单页已进栈
    final codeField = tester.widget<TextFormField>(
      find.widgetWithText(TextFormField, '委托编号'),
    );
    expect(codeField.controller!.text, 'WT-2026-001'); // existing 预填
  });
}
