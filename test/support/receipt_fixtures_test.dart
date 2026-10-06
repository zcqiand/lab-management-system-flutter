import 'package:flutter_test/flutter_test.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_fixtures.dart';

void main() {
  test('receiptJson 经 standardSerializers 解码为 SampleReceipt（必填面齐）', () {
    final json = receiptJson();
    final receipt = standardSerializers.deserializeWith(
      SampleReceipt.serializer, json,
    )!;
    expect(receipt.id, 'r-1');
    expect(receipt.commissionCode, 'WT-2026-001');
    expect(receipt.flowStatus, FlowStatus.receiving);
    expect(receipt.flowHistory, isEmpty);
  });

  test('sampleJson 解码：ext map 进 BuiltMap', () {
    final sample = standardSerializers.deserializeWith(
      Sample.serializer, sampleJson(ext: {'slump': '180'}),
    )!;
    expect(sample.sampleCode, 'S-001');
    expect(sample.ext['slump'], '180');
  });

  test('historyJson 解码：operator wire 名 + 枚举 from/to', () {
    final entry = standardSerializers.deserializeWith(
      FlowHistoryEntry.serializer, historyJson(),
    )!;
    expect(entry.operator_, 'alice');
    expect(entry.from, FlowStatus.receiving);
    expect(entry.to, FlowStatus.taskAssignment);
  });

  test('receiptListJson 解码：items/page/pageSize/total', () {
    final resp = standardSerializers.deserializeWith(
      ReceiptsListReceipts200Response.serializer,
      receiptListJson([receiptJson(id: 'r-1'), receiptJson(id: 'r-2')]),
    )!;
    expect(resp.items.length, 2);
    expect(resp.page, 1);
    expect(resp.total, 2);
  });

  test('reportNamesJson 解码：extFields 四型定义', () {
    // reportNamesJson 产出列表包装（{items,...}），与 receiptListJson 同构：
    // 先过包装 serializer，再取 items.single 断言 extFields。
    final resp = standardSerializers.deserializeWith(
      ReportNamesListReportNames200Response.serializer,
      reportNamesJson(extFieldDefs: [
        extFieldDefJson(key: 'slump', label: '坍落度', type: 'text'),
        extFieldDefJson(key: 'strength', label: '强度等级', type: 'select',
            options: ['C30', 'C35']),
      ]),
    )!;
    final name = resp.items.single;
    expect(name.extFields!.length, 2);
    expect(name.extFields![0].type, ExtFieldDefType.text);
    expect(name.extFields![1].required_, isFalse);
  });
}
