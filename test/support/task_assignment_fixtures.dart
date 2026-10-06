import 'receipt_fixtures.dart';

// M03.F02 任务分配切片共享 mock 体（REQ-2026-004）。
// 接样单/列表包装形状与 receipt_fixtures 完全同构——直接复用 receiptJson /
// receiptListJson，本文件只补切片特有面：
//   - receiptInTaskAssignmentJson：task_assignment 阶段单（queue 列表行）
//   - flowActionResultJson：act 批量响应项（生成模型 {id, ok, message?, flowStatus?}，
//     盘上核实 2026-10-06）
// 纯产 JSON map，不引生成 barrel（unused_import，同 receipt_fixtures 惯例）。

/// task_assignment 阶段接样单（队列行）。[assignee] null = 未安排单；
/// [overrides] 浅替换顶层键（同 receiptJson 口径）。
Map<String, dynamic> receiptInTaskAssignmentJson({
  String id = 'r-1',
  String? assignee = '张检测',
  Map<String, Object?> overrides = const {},
}) {
  return receiptJson(
    id: id,
    flowStatus: 'taskAssignment', // wire 名驼峰（historyJson 同源实证）
    overrides: <String, Object?>{
      // 已安排缺省面；assignee=null 即显式 null 键（未安排单，JSON null 非缺键）
      'assigneeName': assignee,
      'plannedTestDate': assignee == null ? null : '2026-10-10',
      ...overrides,
    },
  );
}

Map<String, dynamic> taskQueueJson(List<Map<String, dynamic>> items) =>
    <String, dynamic>{
      'items': items,
      'page': 1,
      'pageSize': 50, // 队列惯例显式 pageSize=50（对齐 react 参照）
      'total': items.length,
    };

/// act 批量响应项。FlowActionResult 必填 2：id/ok；message/flowStatus 可空。
Map<String, dynamic> flowActionResultJson(
  String id, {
  bool ok = true,
  String? message,
  String? flowStatus = 'dataEntry',
}) => <String, dynamic>{
  'id': id,
  'ok': ok,
  'message': ?message, // null 时整键省略
  'flowStatus': ?flowStatus,
};
