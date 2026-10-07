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
import 'package:lab_management_system_flutter/features/receipts/data_entry_queue_controller.dart';
import 'package:lab_management_system_flutter/features/receipts/data_entry_queue_page.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import '../../fakes/in_memory_token_store.dart';
import '../../support/data_entry_fixtures.dart';
import '../../support/receipt_fixtures.dart';
import '../../support/task_assignment_fixtures.dart';

/// 固定认证态桩（task_queue_act_test 同款）：有会话身份。
class _AuthedNamedController extends AuthController {
  @override
  AuthState build() => const Authed(userId: 'u-1', displayName: '测试用户');
}

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

  testWidgets('队列固定 flowStatus=data_entry 查询 + 行渲染（@entry I01 证明）', (
    tester,
  ) async {
    // fn: M03.F03.I01
    String? capturedFlowStatus;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        capturedFlowStatus = options.uri.queryParameters['flowStatus'];
        return receiptListJson([receiptInDataEntryJson()]);
      });
    });
    await pumpQueue(tester, dio);
    expect(capturedFlowStatus, 'data_entry');
    expect(find.textContaining('WT-2026-001'), findsOneWidget);
  });

  testWidgets('勾选两行提交：body ids 精确/action=submit/operator=会话名（@entry I12 证明）', (
    tester,
  ) async {
    // fn: M03.F03.I12
    FlowActionRequest? captured;
    final (dio, adapter) = receiptRig();
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        if (options.uri.queryParameters['flowStatus'] != 'data_entry') {
          return receiptListJson(const []);
        }
        return receiptListJson([
          receiptInDataEntryJson(id: 'r-1'),
          receiptInDataEntryJson(
            id: 'r-2',
            overrides: {'commissionCode': 'WT-2026-002'},
          ),
        ]);
      });
    });
    adapter.onPost('/api/receipts/data-entry/act', (server) {
      server.reply(200, (RequestOptions options) {
        captured = standardSerializers.deserializeWith(
          FlowActionRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return [
          flowActionResultJson('r-1', flowStatus: 'review'),
          flowActionResultJson('r-2', flowStatus: 'review'),
        ];
      });
    });
    await pumpQueue(tester, dio, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    // 行 = ListTile + leading Checkbox（CheckboxListTile 内层 InkWell 吞
    // 整行点击，行体要留「点开录入 sheet」——见 queue 页注释）。
    await tester.tap(find.byType(Checkbox).at(0));
    await tester.pumpAndSettle();
    await tester.tap(find.byType(Checkbox).at(1));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(TextButton, '提交到报告审核'));
    await tester.pumpAndSettle();
    expect(captured, isNotNull);
    expect(captured!.ids.toList(), ['r-1', 'r-2']);
    expect(captured!.action, FlowAction.submit);
    expect(captured!.operator_, '测试用户');
  });

  testWidgets('零勾选：act 按钮全禁（onPressed==null），不发网络', (tester) async {
    var actCalls = 0;
    final (dio, adapter) = receiptRig();
    adapter.onGet(
      '/api/receipts',
      (server) =>
          server.reply(200, receiptListJson([receiptInDataEntryJson()])),
    );
    adapter.onPost('/api/receipts/data-entry/act', (server) {
      server.reply(200, (RequestOptions options) {
        actCalls++;
        return [flowActionResultJson('r-1', flowStatus: 'review')];
      });
    });
    await pumpQueue(tester, dio, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    expect(
      tester
          .widget<TextButton>(find.widgetWithText(TextButton, '提交到报告审核'))
          .onPressed,
      isNull,
    );
    expect(
      tester
          .widget<TextButton>(find.widgetWithText(TextButton, '退回任务分配'))
          .onPressed,
      isNull,
    );
    expect(
      tester.widget<TextButton>(find.widgetWithText(TextButton, '撤回')).onPressed,
      isNull,
    );
    expect(actCalls, 0);
  });

  test('acting 期再调 runAct 是 no-op，网络侧 calls==1', () async {
    var actCalls = 0;
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onGet(
      '/api/receipts',
      (server) =>
          server.reply(200, receiptListJson([receiptInDataEntryJson()])),
    );
    adapter.onPost('/api/receipts/data-entry/act', (server) {
      server.reply(200, (RequestOptions options) {
        actCalls++;
        return [flowActionResultJson('r-1', flowStatus: 'review')];
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
    container.listen(dataEntryQueueControllerProvider, (_, _) {});
    final c = container.read(dataEntryQueueControllerProvider.notifier);
    await c.load();
    c.toggleSelect('r-1');
    // 不 await 第一个：Acting 同步置位，第二个调用必被拦
    final f1 = c.runAct(FlowAction.submit);
    await c.runAct(FlowAction.submit);
    await f1;
    expect(actCalls, 1);
  });

  test('成功后清选择 + silent 回刷：全程不闪 Loading', () async {
    var actCalls = 0;
    var queueCalls = 0;
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    adapter.onGet('/api/receipts', (server) {
      server.reply(200, (RequestOptions options) {
        if (options.uri.queryParameters['flowStatus'] != 'data_entry') {
          return receiptListJson(const []);
        }
        queueCalls++;
        return receiptListJson([receiptInDataEntryJson()]);
      });
    });
    adapter.onPost('/api/receipts/data-entry/act', (server) {
      server.reply(200, (RequestOptions options) {
        actCalls++;
        return [flowActionResultJson('r-1', flowStatus: 'review')];
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
    final states = <DataEntryQueueState>[];
    container.listen(
      dataEntryQueueControllerProvider,
      (_, next) => states.add(next),
    );
    final c = container.read(dataEntryQueueControllerProvider.notifier);
    await c.load();
    c.toggleSelect('r-1');
    await c.runAct(FlowAction.submit);
    expect(actCalls, 1);
    // silent 回刷：首载 + 回刷共两轮
    expect(queueCalls, 2);
    final s = c.state;
    expect(s, isA<DataEntryQueueLoaded>());
    expect((s as DataEntryQueueLoaded).selectedIds, isEmpty);
    expect(states.whereType<DataEntryQueueLoading>(), isEmpty);
    expect(states.whereType<DataEntryQueueActing>().length, 1);
  });

  testWidgets('422（退回到无前置）→ SnackBar「当前阶段不可退回」上屏不崩栈', (tester) async {
    final (dio, adapter) = receiptRig();
    adapter.onGet(
      '/api/receipts',
      (server) =>
          server.reply(200, receiptListJson([receiptInDataEntryJson()])),
    );
    adapter.onPost(
      '/api/receipts/data-entry/act',
      (server) => server.reply(422, <String, dynamic>{'message': 'bad'}),
    );
    await pumpQueue(tester, dio, [
      authControllerProvider.overrideWith(_AuthedNamedController.new),
    ]);
    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(TextButton, '退回任务分配'));
    await tester.pumpAndSettle();
    expect(find.text('当前阶段不可退回'), findsOneWidget);
    // 不崩栈：列表仍在、选择保留（可重试）
    expect(find.byType(Checkbox), findsOneWidget);
    expect(
      tester.widget<Checkbox>(find.byType(Checkbox)).value,
      isTrue,
    );
  });
}
