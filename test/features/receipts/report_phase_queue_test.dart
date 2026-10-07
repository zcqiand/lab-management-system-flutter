import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/core/auth/auth_state.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/receipts_list_page.dart';
import 'package:lab_management_system_flutter/features/receipts/report_phase_queue_page.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import '../../fakes/in_memory_token_store.dart';
import '../../support/receipt_fixtures.dart';
import '../../support/task_assignment_fixtures.dart';

/// 固定认证态桩（F03 同款）：有会话身份。
class _AuthedNamedController extends AuthController {
  @override
  AuthState build() => const Authed(userId: 'u-1', displayName: '测试用户');
}

/// 四阶段规格表（树 M03.F05-F08）：flowStatus wire 值 / 页标题 / act 端点 /
/// 按钮文案。实现侧查同一形状的表（lib/features/receipts/report_phase_queue_page.dart）。
class _PhaseSpec {
  const _PhaseSpec(
    this.status,
    this.wire,
    this.title,
    this.actPath,
    this.submitLabel,
    this.returnLabel,
  );

  final FlowStatus status;
  final String wire;
  final String title;
  final String actPath;
  final String submitLabel;
  final String returnLabel;
}

const _specs = [
  _PhaseSpec(FlowStatus.review, 'review', '报告审核', '/api/receipts/review/act',
      '审核通过', '退回数据录入'),
  _PhaseSpec(FlowStatus.approval, 'approval', '报告批准',
      '/api/receipts/approve/act', '批准', '退回审核'),
  _PhaseSpec(FlowStatus.issuance, 'issuance', '报告发放',
      '/api/receipts/issuance/act', '发放', '退回批准'),
  _PhaseSpec(FlowStatus.archived, 'archived', '报告归档',
      '/api/receipts/archived/act', '归档完成', '退回发放'),
];

void main() {
  Future<void> pumpPhase(
    WidgetTester tester,
    Dio dio,
    _PhaseSpec spec, [
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
        child: MaterialApp(home: ReportPhaseQueuePage(phase: spec.status)),
      ),
    );
    await tester.pumpAndSettle();
  }

  // ---- I01 ×4：各阶段队列固定 flowStatus 查询 + 行渲染 ----

  testWidgets('审核队列固定 flowStatus=review 查询 + 标题（@entry I01 证明）', (tester) async {
    // fn: M03.F05.I01
    final spec = _specs[0];
    String? capturedFlowStatus;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        capturedFlowStatus = options.uri.queryParameters['flowStatus'];
        return receiptListJson([
          receiptJson(id: 'r-1', flowStatus: spec.wire),
        ]);
      });
    });
    await pumpPhase(tester, dio, spec);
    expect(capturedFlowStatus, 'review');
    expect(find.text('报告审核'), findsOneWidget);
    expect(find.textContaining('WT-2026-001'), findsOneWidget);
  });

  testWidgets('批准队列固定 flowStatus=approval 查询 + 标题', (tester) async {
    // fn: M03.F06.I01
    final spec = _specs[1];
    String? capturedFlowStatus;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        capturedFlowStatus = options.uri.queryParameters['flowStatus'];
        return receiptListJson([
          receiptJson(id: 'r-1', flowStatus: spec.wire),
        ]);
      });
    });
    await pumpPhase(tester, dio, spec);
    expect(capturedFlowStatus, 'approval');
    expect(find.text('报告批准'), findsOneWidget);
    expect(find.textContaining('WT-2026-001'), findsOneWidget);
  });

  testWidgets('发放队列固定 flowStatus=issuance 查询 + 标题', (tester) async {
    // fn: M03.F07.I01
    final spec = _specs[2];
    String? capturedFlowStatus;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        capturedFlowStatus = options.uri.queryParameters['flowStatus'];
        return receiptListJson([
          receiptJson(id: 'r-1', flowStatus: spec.wire),
        ]);
      });
    });
    await pumpPhase(tester, dio, spec);
    expect(capturedFlowStatus, 'issuance');
    expect(find.text('报告发放'), findsOneWidget);
    expect(find.textContaining('WT-2026-001'), findsOneWidget);
  });

  testWidgets('归档队列固定 flowStatus=archived 查询 + 标题', (tester) async {
    // fn: M03.F08.I01
    final spec = _specs[3];
    String? capturedFlowStatus;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        capturedFlowStatus = options.uri.queryParameters['flowStatus'];
        return receiptListJson([
          receiptJson(id: 'r-1', flowStatus: spec.wire),
        ]);
      });
    });
    await pumpPhase(tester, dio, spec);
    expect(capturedFlowStatus, 'archived');
    expect(find.text('报告归档'), findsOneWidget);
    expect(find.textContaining('WT-2026-001'), findsOneWidget);
  });

  // ---- I07/I05 ×4：act submit 打到本阶段端点 + body 精确 ----

  testWidgets('审核勾选一行提交：POST review/act body ids/action/operator（I07 证明）', (
    tester,
  ) async {
    // fn: M03.F05.I07
    final spec = _specs[0];
    FlowActionRequest? captured;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(
        200,
        receiptListJson([receiptJson(id: 'r-1', flowStatus: spec.wire)]),
      );
    });
    // 只注册本阶段端点：实现若打到别的阶段 act 路径，未注册路由即抛错。
    adapter.onPost(spec.actPath, (server) {
      server.reply(200, (RequestOptions options) {
        captured = standardSerializers.deserializeWith(
          FlowActionRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return [flowActionResultJson('r-1', flowStatus: 'approval')];
      });
    });
    await pumpPhase(tester, dio, spec, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(TextButton, spec.submitLabel));
    await tester.pumpAndSettle();
    expect(captured, isNotNull);
    expect(captured!.ids.toList(), ['r-1']);
    expect(captured!.action, FlowAction.submit);
    expect(captured!.operator_, '测试用户');
  });

  testWidgets('批准勾选一行提交：POST approve/act body ids/action/operator（I05 证明）', (
    tester,
  ) async {
    // fn: M03.F06.I05
    final spec = _specs[1];
    FlowActionRequest? captured;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(
        200,
        receiptListJson([receiptJson(id: 'r-1', flowStatus: spec.wire)]),
      );
    });
    adapter.onPost(spec.actPath, (server) {
      server.reply(200, (RequestOptions options) {
        captured = standardSerializers.deserializeWith(
          FlowActionRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return [flowActionResultJson('r-1', flowStatus: 'issuance')];
      });
    });
    await pumpPhase(tester, dio, spec, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(TextButton, spec.submitLabel));
    await tester.pumpAndSettle();
    expect(captured, isNotNull);
    expect(captured!.ids.toList(), ['r-1']);
    expect(captured!.action, FlowAction.submit);
    expect(captured!.operator_, '测试用户');
  });

  testWidgets('发放勾选一行提交：POST issuance/act body ids/action/operator（I05 证明）', (
    tester,
  ) async {
    // fn: M03.F07.I05
    final spec = _specs[2];
    FlowActionRequest? captured;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(
        200,
        receiptListJson([receiptJson(id: 'r-1', flowStatus: spec.wire)]),
      );
    });
    adapter.onPost(spec.actPath, (server) {
      server.reply(200, (RequestOptions options) {
        captured = standardSerializers.deserializeWith(
          FlowActionRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return [flowActionResultJson('r-1', flowStatus: 'archived')];
      });
    });
    await pumpPhase(tester, dio, spec, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(TextButton, spec.submitLabel));
    await tester.pumpAndSettle();
    expect(captured, isNotNull);
    expect(captured!.ids.toList(), ['r-1']);
    expect(captured!.action, FlowAction.submit);
    expect(captured!.operator_, '测试用户');
  });

  testWidgets('归档勾选一行提交：POST archived/act body ids/action/operator（I05 证明）', (
    tester,
  ) async {
    // fn: M03.F08.I05
    final spec = _specs[3];
    FlowActionRequest? captured;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(
        200,
        receiptListJson([receiptJson(id: 'r-1', flowStatus: spec.wire)]),
      );
    });
    adapter.onPost(spec.actPath, (server) {
      server.reply(200, (RequestOptions options) {
        captured = standardSerializers.deserializeWith(
          FlowActionRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return [flowActionResultJson('r-1', flowStatus: 'completed')];
      });
    });
    await pumpPhase(tester, dio, spec, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(TextButton, spec.submitLabel));
    await tester.pumpAndSettle();
    expect(captured, isNotNull);
    expect(captured!.ids.toList(), ['r-1']);
    expect(captured!.action, FlowAction.submit);
    expect(captured!.operator_, '测试用户');
  });

  // ---- I02 ×4：按钮半边——return 动作打到本阶段端点 ----

  testWidgets('审核退回：按钮 return → POST review/act action=return（I02 证明）', (
    tester,
  ) async {
    // fn: M03.F05.I02
    final spec = _specs[0];
    FlowActionRequest? captured;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(
        200,
        receiptListJson([receiptJson(id: 'r-1', flowStatus: spec.wire)]),
      );
    });
    adapter.onPost(spec.actPath, (server) {
      server.reply(200, (RequestOptions options) {
        captured = standardSerializers.deserializeWith(
          FlowActionRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return [flowActionResultJson('r-1', flowStatus: 'data_entry')];
      });
    });
    await pumpPhase(tester, dio, spec, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(TextButton, spec.returnLabel));
    await tester.pumpAndSettle();
    expect(captured, isNotNull);
    expect(captured!.ids.toList(), ['r-1']);
    expect(captured!.action, FlowAction.return_);
    expect(captured!.operator_, '测试用户');
  });

  testWidgets('批准驳回：按钮 return → POST approve/act action=return（I02 证明）', (
    tester,
  ) async {
    // fn: M03.F06.I02
    final spec = _specs[1];
    FlowActionRequest? captured;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(
        200,
        receiptListJson([receiptJson(id: 'r-1', flowStatus: spec.wire)]),
      );
    });
    adapter.onPost(spec.actPath, (server) {
      server.reply(200, (RequestOptions options) {
        captured = standardSerializers.deserializeWith(
          FlowActionRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return [flowActionResultJson('r-1', flowStatus: 'review')];
      });
    });
    await pumpPhase(tester, dio, spec, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(TextButton, spec.returnLabel));
    await tester.pumpAndSettle();
    expect(captured, isNotNull);
    expect(captured!.ids.toList(), ['r-1']);
    expect(captured!.action, FlowAction.return_);
    expect(captured!.operator_, '测试用户');
  });

  testWidgets('发放退回：按钮 return → POST issuance/act action=return', (tester) async {
    final spec = _specs[2];
    FlowActionRequest? captured;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(
        200,
        receiptListJson([receiptJson(id: 'r-1', flowStatus: spec.wire)]),
      );
    });
    adapter.onPost(spec.actPath, (server) {
      server.reply(200, (RequestOptions options) {
        captured = standardSerializers.deserializeWith(
          FlowActionRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return [flowActionResultJson('r-1', flowStatus: 'approval')];
      });
    });
    await pumpPhase(tester, dio, spec, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(TextButton, spec.returnLabel));
    await tester.pumpAndSettle();
    expect(captured!.action, FlowAction.return_);
  });

  testWidgets('归档退回：按钮 return → POST archived/act action=return（I02 证明）', (
    tester,
  ) async {
    // fn: M03.F08.I02
    final spec = _specs[3];
    FlowActionRequest? captured;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(
        200,
        receiptListJson([receiptJson(id: 'r-1', flowStatus: spec.wire)]),
      );
    });
    adapter.onPost(spec.actPath, (server) {
      server.reply(200, (RequestOptions options) {
        captured = standardSerializers.deserializeWith(
          FlowActionRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return [flowActionResultJson('r-1', flowStatus: 'issuance')];
      });
    });
    await pumpPhase(tester, dio, spec, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(TextButton, spec.returnLabel));
    await tester.pumpAndSettle();
    expect(captured, isNotNull);
    expect(captured!.ids.toList(), ['r-1']);
    expect(captured!.action, FlowAction.return_);
    expect(captured!.operator_, '测试用户');
  });

  // ---- F07.I02：reportCode 行呈现 ----

  testWidgets('发放行 reportCode 非空 → 行上呈现报告编号（F07.I02 证明）', (tester) async {
    // fn: M03.F07.I02
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, receiptListJson([
        receiptJson(
          id: 'r-1',
          flowStatus: 'issuance',
          overrides: {'reportCode': 'BG-2026-007'},
        ),
      ]));
    });
    await pumpPhase(tester, dio, _specs[2]);
    expect(find.text('BG-2026-007'), findsOneWidget);
  });

  // ---- 横切佐证（不挂 ID）：零勾选全禁 / 422 / acting no-op / appbar 入口 ----

  testWidgets('零勾选：三 act 钮全禁（onPressed==null），不发网络', (tester) async {
    var actCalls = 0;
    final spec = _specs[0];
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(
        200,
        receiptListJson([receiptJson(id: 'r-1', flowStatus: spec.wire)]),
      );
    });
    adapter.onPost(spec.actPath, (server) {
      server.reply(200, (RequestOptions options) {
        actCalls++;
        return [flowActionResultJson('r-1')];
      });
    });
    await pumpPhase(tester, dio, spec, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    expect(
      tester
          .widget<TextButton>(
            find.widgetWithText(TextButton, spec.submitLabel),
          )
          .onPressed,
      isNull,
    );
    expect(
      tester
          .widget<TextButton>(
            find.widgetWithText(TextButton, spec.returnLabel),
          )
          .onPressed,
      isNull,
    );
    expect(
      tester.widget<TextButton>(
        find.widgetWithText(TextButton, '撤回'),
      ).onPressed,
      isNull,
    );
    expect(actCalls, 0);
  });

  testWidgets('422（退回到无前置）→ SnackBar「当前阶段不可退回」，选择保留可重试', (tester) async {
    final spec = _specs[0];
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(
        200,
        receiptListJson([receiptJson(id: 'r-1', flowStatus: spec.wire)]),
      );
    });
    adapter.onPost(
      spec.actPath,
      (server) => server.reply(422, <String, dynamic>{'message': 'bad'}),
    );
    await pumpPhase(tester, dio, spec, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(TextButton, spec.returnLabel));
    await tester.pumpAndSettle();
    expect(find.text('当前阶段不可退回'), findsOneWidget);
    expect(find.byType(Checkbox), findsOneWidget);
    expect(tester.widget<Checkbox>(find.byType(Checkbox)).value, isTrue);
  });

  test('acting 期再调 runAct 是 no-op，网络侧 calls==1', () async {
    var actCalls = 0;
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onGet('/api/receipts', (server) {
      server.reply(
        200,
        receiptListJson([receiptJson(id: 'r-1', flowStatus: 'review')]),
      );
    });
    adapter.onPost('/api/receipts/review/act', (server) {
      server.reply(200, (RequestOptions options) {
        actCalls++;
        return [flowActionResultJson('r-1')];
      });
    });
    final container = ProviderContainer(
      overrides: [
        dioProvider.overrideWithValue(dio),
        tokenStoreProvider.overrideWithValue(InMemoryTokenStore()),
        sessionGuardProvider.overrideWithValue(SessionGuard()),
        authControllerProvider.overrideWith(_AuthedNamedController.new),
      ],
    );
    addTearDown(container.dispose);
    // autoDispose 无监听即焚（G-4）：listen 挂载保活
    container.listen(
      reportPhaseQueueControllerProvider(FlowStatus.review),
      (_, _) {},
    );
    final c = container.read(
      reportPhaseQueueControllerProvider(FlowStatus.review).notifier,
    );
    await c.load();
    c.toggleSelect('r-1');
    // 不 await 第一个：Acting 同步置位，第二个调用必被拦
    final f1 = c.runAct(FlowAction.submit);
    await c.runAct(FlowAction.submit);
    await f1;
    expect(actCalls, 1);
  });

  testWidgets('接样列表 appbar 四入口 → 各阶段队列页入栈（AC-6）', (tester) async {
    final (dio, adapter) = receiptRig();
    // 同路径重注册是替换非排队：单 handler 按 query 分流——队列请求带 flowStatus，
    // 接样列表首载不带过滤。
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        final wire = options.uri.queryParameters['flowStatus'];
        return (wire == null || wire.isEmpty)
            ? receiptListJson([receiptJson(id: 'r-1')])
            : receiptListJson([receiptJson(id: 'r-1', flowStatus: wire)]);
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
    expect(find.byType(ReportPhaseQueuePage), findsNothing);
    for (final spec in _specs) {
      await tester.tap(find.byTooltip(spec.title));
      await tester.pumpAndSettle();
      expect(find.byType(ReportPhaseQueuePage), findsOneWidget);
      expect(find.text(spec.title), findsOneWidget);
      await tester.pageBack();
      await tester.pumpAndSettle();
    }
  });
}
