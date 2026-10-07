import 'receipt_fixtures.dart';

// M03.F03 数据录入切片共享 mock 体（REQ-2026-005）。
// 接样单/列表包装与 receipt_fixtures 完全同构——复用 receiptJson /
// receiptListJson / samplesListJson，本文件只补切片特有面：
//   - receiptInDataEntryJson：data_entry 阶段单（queue 列表行）
//   - inspectionParameterJson / testRecordJson：录入 sheet 目录体
//   - parametersListJson：字典参数列表包装（shape 同 samples 列表包装）
// flowStatus JSON 值用生成层真 wire 名蛇形（flow_status.dart wireName 实证；
// F02 fixture 的驼峰是成员名回退路，两写法皆可反序列化，本切片按 wire 名）。
// 纯产 JSON map，不引生成 barrel（unused_import，同 receipt_fixtures 惯例）。

/// data_entry 阶段接样单（队列行）。[overrides] 浅替换顶层键。
Map<String, dynamic> receiptInDataEntryJson({
  String id = 'r-1',
  Map<String, Object?> overrides = const {},
}) {
  return receiptJson(id: id, flowStatus: 'data_entry', overrides: overrides);
}

/// 检测参数字典行（InspectionParameter）。必填 9：code/name/rawName/
/// canonicalName/aliases/sourceType/sortOrder/createdAt/updatedAt。
Map<String, dynamic> inspectionParameterJson({
  String code = 'IP-001',
  String name = '抗压强度',
  Map<String, Object?> overrides = const {},
}) => <String, dynamic>{
  'code': code,
  'name': name,
  'rawName': name,
  'canonicalName': name,
  'aliases': <String>[],
  'sourceType': 'official',
  'sortOrder': 1,
  'createdAt': '2026-10-01 08:00:00',
  'updatedAt': '2026-10-01 08:00:00',
  ...overrides,
};

Map<String, dynamic> parametersListJson(List<Map<String, dynamic>> items) =>
    <String, dynamic>{
      'items': items,
      'page': 1,
      'pageSize': 200, // 目录装载惯例显式 pageSize=200（swift 参照同参）
      'total': items.length,
    };

/// 检测记录行（TestRecord）。必填 8：id/tenantId/sampleId/parameterCode/
/// requirement/result/createdAt/updatedAt；standardCode/requirementCode/
/// verdict 可空（verdict null = 未判定）。
Map<String, dynamic> testRecordJson({
  String id = 'tr-1',
  String sampleId = 's-1',
  String parameterCode = 'IP-001',
  String requirement = '≥42.5MPa',
  String result = '44.2',
  String? verdict = '合格',
  String? standardCode = 'GB/T 17671',
  Map<String, Object?> overrides = const {},
}) => <String, dynamic>{
  'id': id,
  'tenantId': 't-1',
  'sampleId': sampleId,
  'parameterCode': parameterCode,
  'standardCode': ?standardCode,
  'requirementCode': null,
  'requirement': requirement,
  'result': result,
  'verdict': ?verdict,
  'createdAt': '2026-10-06 09:00:00',
  'updatedAt': '2026-10-06 09:00:00',
  ...overrides,
};

Map<String, dynamic> testRecordsListJson(List<Map<String, dynamic>> items) =>
    <String, dynamic>{
      'items': items,
      'page': 1,
      'pageSize': 200,
      'total': items.length,
    };

/// 保存成功响应体（TestRecord 回读）——默认新键 create 形状。
Map<String, dynamic> savedTestRecordJson({
  String id = 'tr-new',
  String sampleId = 's-1',
  String parameterCode = 'IP-001',
  String? verdict,
}) => testRecordJson(
  id: id,
  sampleId: sampleId,
  parameterCode: parameterCode,
  verdict: verdict,
  requirement: '≥42.5MPa',
  result: '44.2',
);
