import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart';

import 'receipt_providers.dart';

/// 录入 sheet 状态机（M03.F03.I01 sheet 半边 + I02/I03）。
/// 表单值（result/requirement/standardCode/verdict）入 state：键切换即按
/// 既有记录回填（swift fillFromExisting 同款），保存失败留窗保输入。
sealed class DataEntrySheetState {
  const DataEntrySheetState();
}

class DataEntrySheetLoading extends DataEntrySheetState {
  const DataEntrySheetLoading();
}

class DataEntrySheetError extends DataEntrySheetState {
  const DataEntrySheetError({required this.message});
  final String message;
}

class DataEntrySheetLoaded extends DataEntrySheetState {
  const DataEntrySheetLoaded({
    required this.samples,
    required this.parameters,
    required this.recordsBySample,
    required this.selectedSampleId,
    required this.selectedParameterCode,
    required this.result,
    required this.requirement,
    required this.standardCode,
    required this.verdict,
    this.formError,
  });

  final BuiltList<Sample> samples;
  final BuiltList<InspectionParameter> parameters;

  /// 既有记录索引：sampleId → 该样品全部检测记录（键 = sampleId#parameterCode）。
  final BuiltMap<String, BuiltList<TestRecord>> recordsBySample;

  final String selectedSampleId;
  final String selectedParameterCode;

  /// 表单值入 state：键切换即按既有记录回填，键入经 updateForm 回写。
  final String result;
  final String requirement;
  final String standardCode;

  /// verdict null = 未判定（空选择器值）。
  final String? verdict;

  /// 校验/保存错误文案上屏位（AC-5）：fail-fast 与保存失败共用，重填即清。
  final String? formError;

  /// 当前键的既有记录；无 = 新键（保存走 POST）。
  TestRecord? existingRecordFor(String sampleId, String parameterCode) {
    final list = recordsBySample[sampleId];
    if (list == null) return null;
    for (final r in list) {
      if (r.parameterCode == parameterCode) return r;
    }
    return null;
  }

  TestRecord? get currentRecord =>
      existingRecordFor(selectedSampleId, selectedParameterCode);

  DataEntrySheetLoaded copyWith({
    String? selectedSampleId,
    String? selectedParameterCode,
    String? result,
    String? requirement,
    String? standardCode,
    String? verdict,
    bool clearVerdict = false,
    String? formError,
    bool clearFormError = false,
  }) => DataEntrySheetLoaded(
    samples: samples,
    parameters: parameters,
    recordsBySample: recordsBySample,
    selectedSampleId: selectedSampleId ?? this.selectedSampleId,
    selectedParameterCode: selectedParameterCode ?? this.selectedParameterCode,
    result: result ?? this.result,
    requirement: requirement ?? this.requirement,
    standardCode: standardCode ?? this.standardCode,
    verdict: clearVerdict ? null : (verdict ?? this.verdict),
    formError: clearFormError ? null : (formError ?? this.formError),
  );
}

/// 保存进行中（继承 Loaded：表单上屏保输入，保存按钮关）。
class DataEntrySheetSaving extends DataEntrySheetLoaded {
  // 非 const：转发 base 的字段值（成员访问不进 const 构造）。
  DataEntrySheetSaving(DataEntrySheetLoaded base)
    : super(
        samples: base.samples,
        parameters: base.parameters,
        recordsBySample: base.recordsBySample,
        selectedSampleId: base.selectedSampleId,
        selectedParameterCode: base.selectedParameterCode,
        result: base.result,
        requirement: base.requirement,
        standardCode: base.standardCode,
        verdict: base.verdict,
        formError: base.formError,
      );
}

/// 录入 sheet 控制器（family by receiptId；riverpod 3：family create fn
/// 直接收 arg，FamilyNotifier 已移除）。
class DataEntrySheetController extends Notifier<DataEntrySheetState> {
  DataEntrySheetController(this.receiptId);

  /// 接样单 id（样品目录按 receiptId 拉）。
  final String receiptId;

  late final SamplesApi _samplesApi;
  late final InspectionDictionaryApi _dictApi;
  late final TestRecordsApi _recordsApi;

  @override
  DataEntrySheetState build() {
    _samplesApi = ref.watch(samplesApiProvider);
    _dictApi = ref.watch(inspectionDictionaryApiProvider);
    _recordsApi = ref.watch(testRecordsApiProvider);
    return const DataEntrySheetLoading();
  }

  /// 目录装载（AC-2）：样品（按本单）+ 参数字典并行，再逐样品拉既有记录
  /// 建键控索引；默认选中首样品/首参数，键上有既有记录即回填表单。
  Future<void> load() async {
    try {
      final samplesFuture = _samplesApi.samplesListSamples(
        receiptId: receiptId,
        pageSize: 200,
      );
      final parametersFuture = _dictApi
          .inspectionDictionaryListParameters(pageSize: 200);
      final samplesRes = await samplesFuture;
      final parametersRes = await parametersFuture;
      final samples = samplesRes.data?.items ?? BuiltList<Sample>();
      final parameters =
          parametersRes.data?.items ?? BuiltList<InspectionParameter>();
      final recordLists = await Future.wait([
        for (final s in samples)
          _recordsApi.testRecordsListTestRecords(sampleId: s.id, pageSize: 200),
      ]);
      if (!ref.mounted) return;
      final recordsBySample = MapBuilder<String, BuiltList<TestRecord>>();
      for (var i = 0; i < samples.length; i++) {
        recordsBySample[samples[i].id] =
            recordLists[i].data?.items ?? BuiltList<TestRecord>();
      }
      final loaded = DataEntrySheetLoaded(
        samples: samples,
        parameters: parameters,
        recordsBySample: recordsBySample.build(),
        selectedSampleId: samples.isEmpty ? '' : samples.first.id,
        selectedParameterCode: parameters.isEmpty ? '' : parameters.first.code,
        result: '',
        requirement: '',
        standardCode: '',
        verdict: null,
      );
      state = _fillFromExisting(loaded);
    } on DioException catch (e) {
      if (!ref.mounted) return;
      state = DataEntrySheetError(
        message: e.response == null ? '无法连接服务器' : '目录加载失败，请重试',
      );
    }
  }

  /// 键切换共用回填：既有记录在 → 表单值全量回填；新键 → 清空（未判定）。
  DataEntrySheetLoaded _fillFromExisting(DataEntrySheetLoaded s) {
    final existing = s.currentRecord;
    return s.copyWith(
      result: existing?.result ?? '',
      requirement: existing?.requirement ?? '',
      standardCode: existing?.standardCode ?? '',
      clearVerdict: existing == null,
      verdict: existing?.verdict,
      clearFormError: true,
    );
  }

  void selectSample(String sampleId) {
    final cur = state;
    if (cur is! DataEntrySheetLoaded) return;
    state = _fillFromExisting(
      cur.copyWith(selectedSampleId: sampleId, clearFormError: true),
    );
  }

  void selectParameter(String code) {
    final cur = state;
    if (cur is! DataEntrySheetLoaded) return;
    state = _fillFromExisting(
      cur.copyWith(selectedParameterCode: code, clearFormError: true),
    );
  }

  void updateForm({
    String? result,
    String? requirement,
    String? standardCode,
    String? verdict,
    bool clearVerdict = false,
  }) {
    final cur = state;
    if (cur is! DataEntrySheetLoaded || cur is DataEntrySheetSaving) return;
    state = cur.copyWith(
      result: result,
      requirement: requirement,
      standardCode: standardCode,
      verdict: verdict,
      clearVerdict: clearVerdict,
      clearFormError: true,
    );
  }

  /// 保存（I02/I03，AC-3/4/5）：create-vs-update 按当前键既有记录；必填缺失
  /// fail-fast 不发请求；成功返回 true（页侧收窗 + SnackBar + 队列回刷），
  /// 失败留窗保输入。standardCode 空串归一不传；verdict 随 body（null=未判定）。
  Future<bool> save() async {
    final cur = state;
    if (cur is! DataEntrySheetLoaded || cur is DataEntrySheetSaving) {
      return false;
    }
    final result = cur.result.trim();
    final requirement = cur.requirement.trim();
    if (result.isEmpty || requirement.isEmpty) {
      state = cur.copyWith(formError: '请完整填写检测结果与技术要求');
      return false;
    }
    final standardCode =
        cur.standardCode.trim().isEmpty ? null : cur.standardCode.trim();
    final existing = cur.currentRecord;
    state = DataEntrySheetSaving(cur);
    try {
      final TestRecord saved;
      if (existing != null) {
        final response = await _recordsApi.testRecordsUpdateTestRecord(
          id: existing.id,
          updateTestRecordRequest: UpdateTestRecordRequest(
            (b) => b
              ..sampleId = cur.selectedSampleId
              ..parameterCode = cur.selectedParameterCode
              ..standardCode = standardCode
              ..requirement = requirement
              ..result = result
              ..verdict = cur.verdict,
          ),
        );
        saved = response.data!;
      } else {
        final response = await _recordsApi.testRecordsCreateTestRecord(
          createTestRecordRequest: CreateTestRecordRequest(
            (b) => b
              ..sampleId = cur.selectedSampleId
              ..parameterCode = cur.selectedParameterCode
              ..standardCode = standardCode
              ..requirement = requirement
              ..result = result
              ..verdict = cur.verdict,
          ),
        );
        saved = response.data!;
      }
      if (!ref.mounted) return false;
      // 成功即返：页侧凭 true 收窗 + SnackBar + 队列 silent 回刷。
      state = cur.copyWith(formError: null, result: saved.result);
      return true;
    } on DioException catch (e) {
      if (!ref.mounted) return false;
      state = cur.copyWith(
        formError: e.response == null ? '无法连接服务器' : '保存失败，请重试',
      );
      return false;
    }
  }
}

/// autoDispose family：一单一实例，收窗即焚。
final dataEntrySheetControllerProvider =
    NotifierProvider.autoDispose
        .family<DataEntrySheetController, DataEntrySheetState, String>(
          DataEntrySheetController.new,
        );
