import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/core/auth/auth_state.dart';
import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_providers.dart';

/// 数据录入队列状态机（M03.F03.I01/I12，F02 TaskQueueState 同构克隆）。
/// selectedIds 放 Loaded 态内：act 成功后整体回 Loaded(空选择)，迁移单一。
sealed class DataEntryQueueState {
  const DataEntryQueueState();
}

class DataEntryQueueLoading extends DataEntryQueueState {
  const DataEntryQueueLoading();
}

class DataEntryQueueLoaded extends DataEntryQueueState {
  const DataEntryQueueLoaded({
    required this.items,
    required this.selectedIds,
    this.keyword,
    this.actFeedback,
  });
  final BuiltList<SampleReceipt> items;
  final BuiltSet<String> selectedIds;
  final String? keyword;

  /// act 批量反馈（F02 同款）：422 专文案或逐条失败项「id：message」；
  /// null = 无。页侧 ref.listen（prev is Acting）转 SnackBar。
  final String? actFeedback;
}

/// act 批量进行中（I12）：继承 Loaded 保住列表与选择上屏，UI 关 act 按钮。
class DataEntryQueueActing extends DataEntryQueueLoaded {
  const DataEntryQueueActing({
    required super.items,
    required super.selectedIds,
    super.keyword,
    super.actFeedback,
  });
}

class DataEntryQueueEmpty extends DataEntryQueueState {
  const DataEntryQueueEmpty({this.keyword});
  final String? keyword;
}

class DataEntryQueueError extends DataEntryQueueState {
  const DataEntryQueueError({required this.message});
  final String message;
}

class DataEntryQueueController extends Notifier<DataEntryQueueState> {
  late final ReceiptsApi _api;

  @override
  DataEntryQueueState build() {
    _api = ref.watch(receiptsApiProvider);
    return const DataEntryQueueLoading();
  }

  /// 队列固定 flowStatus=data_entry（树 I01：流程线第三环节，接 F02 提交）。
  /// silent=true 不闪 loading（act 成功后回刷 / sheet 保存成功后回刷复用）。
  Future<void> load({String? keyword, bool silent = false}) async {
    if (!silent) state = const DataEntryQueueLoading();
    try {
      final response = await _api.receiptsListReceipts(
        flowStatus: FlowStatus.dataEntry,
        keyword: keyword,
      );
      if (!ref.mounted) return;
      final items = response.data?.items ?? BuiltList<SampleReceipt>();
      if (items.isEmpty) {
        state = DataEntryQueueEmpty(keyword: keyword);
      } else {
        state = DataEntryQueueLoaded(
          items: items,
          selectedIds: BuiltSet<String>(),
          keyword: keyword,
        );
      }
    } on DioException catch (e) {
      if (!ref.mounted) return;
      state = DataEntryQueueError(message: _mapError(e));
    }
  }

  void toggleSelect(String id) {
    final cur = state;
    if (cur is! DataEntryQueueLoaded) return;
    final builder = cur.selectedIds.toBuilder();
    if (!builder.remove(id)) builder.add(id);
    state = DataEntryQueueLoaded(
      items: cur.items,
      selectedIds: builder.build(),
      keyword: cur.keyword,
      actFeedback: cur.actFeedback,
    );
  }

  /// operator 解析链（F02 同款）：displayName 非空优先，否则 userId；
  /// 双空 = 无操作人身份 → null（按钮已禁，此处再拦，ADR-0019）。
  String? _resolveOperator(AuthState auth) => switch (auth) {
    Authed(:final userId, :final displayName) =>
      (displayName?.isNotEmpty ?? false) ? displayName : userId,
    _ => null,
  };

  /// act 三动作（I12：提交到报告审核/退回任务分配/撤回）。acting 期再调 =
  /// no-op（防抖）。200：清选择 + silent 回刷；结果含失败项 → actFeedback
  /// 逐条「id：message」（页侧 SnackBar）。422（RETURN 无前置）→ 专文案
  /// 「当前阶段不可退回」，列表与选择不动（可重试）；其余 → 三分支。
  Future<void> runAct(FlowAction action) async {
    final cur = state;
    if (cur is! DataEntryQueueLoaded || cur is DataEntryQueueActing) return;
    if (cur.selectedIds.isEmpty) return;
    final operator_ = _resolveOperator(ref.read(authControllerProvider));
    if (operator_ == null) return;
    state = DataEntryQueueActing(
      items: cur.items,
      selectedIds: cur.selectedIds,
      keyword: cur.keyword,
    );
    try {
      final response = await _api.receiptsActFlowDataEntry(
        flowActionRequest: FlowActionRequest(
          (b) => b
            ..ids = ListBuilder<String>(cur.selectedIds)
            ..action = action
            ..operator_ = operator_,
        ),
      );
      if (!ref.mounted) return; // autoDispose：页 pop 后丢陈旧响应
      final failures = response.data!.where((r) => !r.ok).toList();
      state = DataEntryQueueLoaded(
        items: cur.items,
        selectedIds: BuiltSet<String>(),
        keyword: cur.keyword,
        actFeedback: failures.isEmpty
            ? null
            : failures.map((r) => '${r.id}：${r.message ?? '操作失败'}').join('；'),
      );
      await load(keyword: cur.keyword, silent: true);
    } on DioException catch (e) {
      if (!ref.mounted) return;
      state = DataEntryQueueLoaded(
        items: cur.items,
        selectedIds: cur.selectedIds,
        keyword: cur.keyword,
        actFeedback: e.response?.statusCode == 422 ? '当前阶段不可退回' : _mapError(e),
      );
    }
  }

  String _mapError(DioException e) {
    if (e.response == null) return '无法连接服务器';
    return '加载失败，请重试';
  }
}

/// autoDispose（F02 同口径：页级业务 provider 随页 pop 即 dispose）。
final dataEntryQueueControllerProvider =
    NotifierProvider.autoDispose<DataEntryQueueController, DataEntryQueueState>(
      DataEntryQueueController.new,
    );
