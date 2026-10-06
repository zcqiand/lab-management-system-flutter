import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_providers.dart';

/// const 基构造：sealed 穷举 switch 需要（ReceiptDetailState 同款）。
sealed class SampleExtState {
  const SampleExtState();
}

class SampleExtLoading extends SampleExtState {
  const SampleExtLoading();
}

class SampleExtReady extends SampleExtState {
  const SampleExtReady({
    required this.defs,
    required this.originalExt,
    this.errors = const <String>{},
  });
  final BuiltList<ExtFieldDef> defs;

  /// 进页时的原始 ext 快照：合并保存的「现有 key 全保留」基线 + 控件预填源。
  final BuiltMap<String, String> originalExt;
  final Set<String> errors;
}

class SampleExtSaving extends SampleExtState {
  const SampleExtSaving();
}

class SampleExtSaved extends SampleExtState {
  const SampleExtSaved();
}

class SampleExtError extends SampleExtState {
  const SampleExtError(this.message);
  final String message;
}

class SampleExtController extends Notifier<SampleExtState> {
  late final ReportNamesApi _reportNamesApi;
  late final SamplesApi _samplesApi;

  @override
  SampleExtState build() {
    _reportNamesApi = ref.watch(reportNamesApiProvider);
    _samplesApi = ref.watch(samplesApiProvider);
    return const SampleExtLoading();
  }

  /// ext 定义真源 = reportNames（pageSize 200）按 categoryCode 匹配；
  /// source=receipt 的定义滤掉（swift REQ-2026-008 同构，source 为 null 保留）。
  /// autoDispose 后 await 间隙 provider 可能已 dispose（页面 pop）——醒来先查
  /// ref.mounted，陈旧响应丢弃不写 state（其余 controller 同纪律）。
  Future<void> load({
    required String categoryCode,
    required Sample sample,
  }) async {
    try {
      final resp = await _reportNamesApi.reportNamesListReportNames(
        page: 1,
        pageSize: 200,
      );
      if (!ref.mounted) return;
      final names = resp.data?.items ?? BuiltList<InspectionReportName>();
      final defs =
          names
              .firstWhere(
                (n) => n.code == categoryCode,
                orElse: () => throw const SampleExtDefNotFound(),
              )
              .extFields
              ?.where((d) => d.source_ != ExtFieldDefSource.receipt)
              .toList() ??
          const <ExtFieldDef>[];
      state = SampleExtReady(
        defs: BuiltList<ExtFieldDef>(defs),
        originalExt: sample.ext,
      );
    } on SampleExtDefNotFound {
      if (!ref.mounted) return;
      state = const SampleExtError('该类别无扩展属性定义');
    } on DioException catch (e) {
      if (!ref.mounted) return;
      state = SampleExtError(_mapError(e));
    }
  }

  /// 合并保存（M03.F01.I07，Review Focus 3）：必填校验不过不打端点；过 =
  /// 现有 key 全保留 + 表单非空值覆盖——空串绝不能抹掉已有值。防重入：
  /// 非 Ready 态（含 Saving 期间再点）= no-op。
  Future<void> save({
    required Sample sample,
    required Map<String, String> values,
  }) async {
    final s = state;
    if (s is! SampleExtReady || state is SampleExtSaving) return;
    final errors = <String>{};
    for (final d in s.defs) {
      final v = (values[d.key] ?? '').trim();
      final original = s.originalExt[d.key] ?? '';
      if ((d.required_ ?? false) && v.isEmpty && original.isEmpty) {
        errors.add(d.key);
      }
    }
    if (errors.isNotEmpty) {
      state = SampleExtReady(
        defs: s.defs,
        originalExt: s.originalExt,
        errors: errors,
      );
      return;
    }
    state = const SampleExtSaving();
    final merged = Map.of(s.originalExt.asMap());
    for (final d in s.defs) {
      final v = (values[d.key] ?? '').trim();
      if (v.isNotEmpty) merged[d.key] = v;
    }
    try {
      await _samplesApi.samplesUpdateSampleExt(
        id: sample.id,
        updateSampleExtRequest: UpdateSampleExtRequest(
          // builder 字段是 MapBuilder（FlowActionRequest ids=ListBuilder 同款，
          // T7 配方）；BuiltMap 赋不进去。
          (b) => b..ext = MapBuilder<String, String>(merged),
        ),
      );
      if (!ref.mounted) return;
      state = const SampleExtSaved();
    } on DioException catch (e) {
      if (!ref.mounted) return;
      state = SampleExtError(_mapError(e));
    }
  }

  String _mapError(DioException e) {
    if (e.response == null) return '无法连接服务器';
    return '加载失败，请重试';
  }
}

class SampleExtDefNotFound implements Exception {
  const SampleExtDefNotFound();
}

/// autoDispose（终审 C-1 收口）：ext 页 pop 即 dispose——push 下一样品拿到
/// 全新 Loading，controller 以新样品 originalExt 建（keepAlive 时首帧以陈旧
/// Ready(前样品) 建 controller 且 putIfAbsent 永不刷新，保存即跨样品写坏）。
final sampleExtControllerProvider =
    NotifierProvider.autoDispose<SampleExtController, SampleExtState>(
      SampleExtController.new,
    );
