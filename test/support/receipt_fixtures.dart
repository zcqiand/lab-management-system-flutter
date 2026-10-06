import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

// 共享 mock 体：SampleReceipt/Sample 必填面大（13/7 必填），逐测试重抄必爆仓。
// 全部返回「DioAdapter 可直接 reply 的 JSON map」，字段清单 = 生成模型盘上核实
// （2026-10-06）；overrides 深合并到顶层，测试只写差异字段。
// 本文件纯产 JSON map，不引生成 barrel（会 unused_import）——解码断言在
// receipt_fixtures_test.dart 侧走 standardSerializers。

const _now = '2026-10-06T08:00:00Z';

/// 接样单。必填 13 全量；[overrides] 覆盖任意顶层键（含 flowHistory）。
Map<String, dynamic> receiptJson({
  String id = 'r-1',
  String flowStatus = 'receiving',
  List<Map<String, dynamic>> flowHistory = const [],
  Map<String, Object?> overrides = const {},
}) {
  return <String, dynamic>{
    'id': id,
    'tenantId': 't-1',
    'contractId': 'c-1',
    'commissionCode': 'WT-2026-001',
    'commissionDate': '2026-10-01',
    'categoryCode': 'xkkz',
    'receivedBy': '王接收',
    'sampleSource': '见证取样',
    'testCategory': '常规',
    'flowStatus': flowStatus,
    'flowHistory': flowHistory,
    'createdAt': _now,
    'updatedAt': _now,
    'projectName': '示例工程',
    'clientUnit': '示例建设单位',
    'testParameters': <dynamic>['C30'],
    ...overrides,
  };
}

/// 样品。必填 7 全量。
Map<String, dynamic> sampleJson({
  String id = 's-1',
  String receiptId = 'r-1',
  Map<String, String> ext = const {},
  Map<String, Object?> overrides = const {},
}) {
  return <String, dynamic>{
    'id': id,
    'tenantId': 't-1',
    'receiptId': receiptId,
    'sampleCode': 'S-001',
    'ext': ext,
    'createdAt': _now,
    'updatedAt': _now,
    ...overrides,
  };
}

Map<String, dynamic> historyJson({
  String action = 'submit',
  String from = 'receiving',
  String to = 'taskAssignment',
  String operator_ = 'alice',
  String at = '2026-10-02T09:00:00Z',
  String? reason,
}) => <String, dynamic>{
  'action': action,
  'from': from,
  'to': to,
  'operator': operator_, // wire 名
  'at': at,
  'reason': ?reason, // null-aware element：reason 为 null 时整键省略
};

Map<String, dynamic> receiptListJson(List<Map<String, dynamic>> items) =>
    <String, dynamic>{
      'items': items,
      'page': 1,
      'pageSize': 20,
      'total': items.length,
    };

Map<String, dynamic> samplesListJson(List<Map<String, dynamic>> items) =>
    <String, dynamic>{
      'items': items,
      'page': 1,
      'pageSize': 20,
      'total': items.length,
    };

Map<String, dynamic> extFieldDefJson({
  String key = 'slump',
  String label = '坍落度',
  String type = 'text',
  bool required_ = false,
  List<String> options = const [],
}) => <String, dynamic>{
  'key': key,
  'label': label,
  'type': type,
  'required': required_,
  if (options.isNotEmpty) 'options': options,
};

Map<String, dynamic> reportNamesJson({
  required List<Map<String, dynamic>> extFieldDefs,
}) => <String, dynamic>{
  'items': [
    {
      'code': 'xkkz',
      'name': '普通混凝土试块',
      'sortOrder': 1,
      'createdAt': _now,
      'updatedAt': _now,
      'extFields': extFieldDefs,
    },
  ],
  'page': 1,
  'pageSize': 200,
  'total': 1,
};

/// 测试 rig：UrlRequestMatcher（body 匹配坑，flutter-stack-ledger ⑥）。
(Dio, DioAdapter) receiptRig() {
  final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
  final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
  return (dio, adapter);
}
