import 'package:flutter_test/flutter_test.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'task_assignment_fixtures.dart';

void main() {
  test('receiptInTaskAssignmentJson 解码：taskAssignment 阶段 + 已安排缺省面', () {
    final receipt = standardSerializers.deserializeWith(
      SampleReceipt.serializer,
      receiptInTaskAssignmentJson(),
    )!;
    expect(receipt.flowStatus, FlowStatus.taskAssignment);
    expect(receipt.assigneeName, '张检测');
    expect(receipt.plannedTestDate, '2026-10-10');
  });

  test('未安排单：assignee=null 显式 JSON null，两可空字段解码 null', () {
    final receipt = standardSerializers.deserializeWith(
      SampleReceipt.serializer,
      receiptInTaskAssignmentJson(id: 'r-2', assignee: null),
    )!;
    expect(receipt.flowStatus, FlowStatus.taskAssignment);
    expect(receipt.assigneeName, isNull);
    expect(receipt.plannedTestDate, isNull);
  });

  test('overrides 覆盖：重安排场景预填值可替换', () {
    final receipt = standardSerializers.deserializeWith(
      SampleReceipt.serializer,
      receiptInTaskAssignmentJson(
        overrides: {'assigneeName': '李新检测', 'plannedTestDate': '2026-10-12'},
      ),
    )!;
    expect(receipt.assigneeName, '李新检测');
    expect(receipt.plannedTestDate, '2026-10-12');
  });

  test('taskQueueJson 解码：包装四字段 + pageSize 50', () {
    final resp = standardSerializers.deserializeWith(
      ReceiptsListReceipts200Response.serializer,
      taskQueueJson([
        receiptInTaskAssignmentJson(id: 'r-1'),
        receiptInTaskAssignmentJson(id: 'r-2', assignee: null),
      ]),
    )!;
    expect(resp.items.length, 2);
    expect(resp.page, 1);
    expect(resp.pageSize, 50);
    expect(resp.total, 2);
    expect(resp.items.first.flowStatus, FlowStatus.taskAssignment);
  });

  test('flowActionResultJson 解码：ok 必填 + message/flowStatus 可空省略', () {
    final ok = standardSerializers.deserializeWith(
      FlowActionResult.serializer,
      flowActionResultJson('r-1'),
    )!;
    expect(ok.id, 'r-1');
    expect(ok.ok, isTrue);
    expect(ok.flowStatus, FlowStatus.dataEntry);

    final failed = standardSerializers.deserializeWith(
      FlowActionResult.serializer,
      flowActionResultJson('r-9', ok: false, message: '当前阶段不可退回'),
    )!;
    expect(failed.ok, isFalse);
    expect(failed.message, '当前阶段不可退回');

    final bare = standardSerializers.deserializeWith(
      FlowActionResult.serializer,
      <String, dynamic>{'id': 'r-0', 'ok': true},
    )!;
    expect(bare.message, isNull);
    expect(bare.flowStatus, isNull);
  });
}
