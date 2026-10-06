import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/task_assign_controller.dart';
import 'package:lab_management_system_flutter/features/receipts/task_assign_dialog.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import '../../fakes/in_memory_token_store.dart';
import '../../fakes/throwing_adapter.dart';
import '../../support/receipt_fixtures.dart';
import '../../support/task_assignment_fixtures.dart';

/// controller 层 rig：裸 ProviderContainer（无 widget 树）。
(ProviderContainer, DioAdapter) assignRig() {
  final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
  final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
  final container = ProviderContainer(
    overrides: [
      dioProvider.overrideWithValue(dio),
      tokenStoreProvider.overrideWithValue(InMemoryTokenStore()),
      sessionGuardProvider.overrideWithValue(SessionGuard()),
    ],
  );
  return (container, adapter);
}

void main() {
  test(
    'assign 成功：PUT body 两字段赋值且 assigneeId 为 null，态机 Idle→Saving→Saved',
    () async {
      AssignTaskRequest? captured;
      final (container, adapter) = assignRig();
      addTearDown(container.dispose);
      // autoDispose 无监听即焚（G-4）：listen 挂载保活，await 间隙 provider 不被 dispose
      container.listen(taskAssignControllerProvider, (_, _) {});
      adapter.onPut('/api/receipts/r-1/task', (server) {
        server.reply(200, (RequestOptions options) {
          captured = standardSerializers.deserializeWith(
            AssignTaskRequest.serializer,
            options.data as Map<String, dynamic>,
          )!;
          return receiptInTaskAssignmentJson(
            overrides: {
              'assigneeName': '李新检测',
              'plannedTestDate': '2026-10-12',
            },
          );
        });
      });
      final c = container.read(taskAssignControllerProvider.notifier);
      expect(c.state is TaskAssignIdle, isTrue); // Idle 初态
      await c.assign(
        receiptId: 'r-1',
        assigneeName: '李新检测',
        plannedTestDate: '2026-10-12',
      );
      expect(captured, isNotNull);
      expect(captured!.assigneeName, '李新检测');
      expect(captured!.plannedTestDate, '2026-10-12');
      // RF#2：assigneeId 不传（后端 None-跳过 patch 语义）
      expect(captured!.assigneeId, isNull);
      expect(c.state is TaskAssignSaved, isTrue);
    },
  );

  test('防抖：Saving 期再调 assign 是 no-op，网络侧 calls==1', () async {
    var calls = 0;
    final (container, adapter) = assignRig();
    addTearDown(container.dispose);
    // autoDispose 无监听即焚（G-4）：listen 挂载保活，await 间隙 provider 不被 dispose
    container.listen(taskAssignControllerProvider, (_, _) {});
    adapter.onPut('/api/receipts/r-1/task', (server) {
      server.reply(200, (RequestOptions options) {
        calls++;
        return receiptInTaskAssignmentJson();
      });
    });
    final c = container.read(taskAssignControllerProvider.notifier);
    // 不 await 第一个：state 已同步置 Saving，第二个调用必须被拦
    final f1 = c.assign(
      receiptId: 'r-1',
      assigneeName: '张检测',
      plannedTestDate: '2026-10-10',
    );
    await c.assign(
      receiptId: 'r-1',
      assigneeName: '李检测',
      plannedTestDate: '2026-10-11',
    );
    await f1;
    expect(calls, 1);
  });

  test('带响应错误（422）→ Error「保存失败，请重试」', () async {
    final (container, adapter) = assignRig();
    addTearDown(container.dispose);
    // autoDispose 无监听即焚（G-4）：listen 挂载保活，await 间隙 provider 不被 dispose
    container.listen(taskAssignControllerProvider, (_, _) {});
    adapter.onPut(
      '/api/receipts/r-1/task',
      (server) => server.reply(422, <String, dynamic>{'message': 'bad'}),
    );
    final c = container.read(taskAssignControllerProvider.notifier);
    await c.assign(
      receiptId: 'r-1',
      assigneeName: '张检测',
      plannedTestDate: '2026-10-10',
    );
    final s = c.state;
    expect(s, isA<TaskAssignError>());
    expect((s as TaskAssignError).message, '保存失败，请重试');
  });

  test('网络不可达 → Error「无法连接服务器」', () async {
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    dio.httpClientAdapter = ThrowingAdapter();
    final container = ProviderContainer(
      overrides: [dioProvider.overrideWithValue(dio)],
    );
    addTearDown(container.dispose);
    container.listen(taskAssignControllerProvider, (_, _) {});
    final c = container.read(taskAssignControllerProvider.notifier);
    await c.assign(
      receiptId: 'r-1',
      assigneeName: '张检测',
      plannedTestDate: '2026-10-10',
    );
    final s = c.state;
    expect(s, isA<TaskAssignError>());
    expect((s as TaskAssignError).message, '无法连接服务器');
  });

  testWidgets('弹窗：预填当前值 + 保存走真流程成功后收窗（@entry I02 证明）', (tester) async {
    // fn: M03.F02.I02
    AssignTaskRequest? captured;
    final (dio, adapter) = receiptRig();
    adapter.onPut('/api/receipts/r-1/task', (server) {
      server.reply(200, (RequestOptions options) {
        captured = standardSerializers.deserializeWith(
          AssignTaskRequest.serializer,
          options.data as Map<String, dynamic>,
        )!;
        return receiptInTaskAssignmentJson(
          overrides: {'assigneeName': '李新检测', 'plannedTestDate': '2026-10-12'},
        );
      });
    });
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          dioProvider.overrideWithValue(dio),
          tokenStoreProvider.overrideWithValue(InMemoryTokenStore()),
          sessionGuardProvider.overrideWithValue(SessionGuard()),
        ],
        child: MaterialApp(
          home: Scaffold(
            // 生产同形：showDialog 承载（队列页「安排」按钮即此开法）。
            // 根路由 canPop=false pop 不掉——直接作 home body 会误报不收窗。
            body: Builder(
              builder: (context) => Center(
                child: FilledButton(
                  onPressed: () => showDialog<void>(
                    context: context,
                    builder: (_) => TaskAssignDialog(
                      receipt: standardSerializers.deserializeWith(
                        SampleReceipt.serializer,
                        receiptInTaskAssignmentJson(),
                      )!,
                    ),
                  ),
                  child: const Text('打开安排弹窗'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('打开安排弹窗'));
    await tester.pumpAndSettle();
    // 重安排场景：预填当前值（AC-3）
    expect(find.widgetWithText(TextField, '张检测'), findsOneWidget);
    expect(find.widgetWithText(TextField, '2026-10-10'), findsOneWidget);

    await tester.enterText(find.widgetWithText(TextField, '张检测'), '李新检测');
    await tester.enterText(
      find.widgetWithText(TextField, '2026-10-10'),
      '2026-10-12',
    );
    await tester.tap(find.text('保存'));
    await tester.pumpAndSettle();
    expect(captured, isNotNull);
    expect(captured!.assigneeName, '李新检测');
    expect(captured!.plannedTestDate, '2026-10-12');
    expect(captured!.assigneeId, isNull);
    // Saved → showDialog 路由 pop 收窗
    expect(find.byType(TaskAssignDialog), findsNothing);
  });
}
