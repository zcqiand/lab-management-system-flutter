import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_providers.dart';

/// 任务分配队列状态机（G-10 三分错误形态，M03.F02.I01）。
/// selectedIds 放 Loaded 态内：act 成功后整体回 Loaded(空选择)，状态迁移单一。
sealed class TaskQueueState {
  const TaskQueueState();
}

class TaskQueueLoading extends TaskQueueState {
  const TaskQueueLoading();
}

class TaskQueueLoaded extends TaskQueueState {
  const TaskQueueLoaded({
    required this.items,
    required this.selectedIds,
    this.keyword,
  });
  final BuiltList<SampleReceipt> items;
  final BuiltSet<String> selectedIds;
  final String? keyword;
}

class TaskQueueEmpty extends TaskQueueState {
  const TaskQueueEmpty({this.keyword});
  final String? keyword;
}

class TaskQueueError extends TaskQueueState {
  const TaskQueueError({required this.message});
  final String message;
}

class TaskQueueController extends Notifier<TaskQueueState> {
  late final ReceiptsApi _api;

  @override
  TaskQueueState build() {
    _api = ref.watch(receiptsApiProvider);
    return const TaskQueueLoading();
  }

  /// 队列固定 flowStatus=taskAssignment（树 I01：流程线第二环节）。
  /// silent=true 不闪 loading（act 成功后回刷复用）。
  Future<void> load({String? keyword, bool silent = false}) async {
    if (!silent) state = const TaskQueueLoading();
    try {
      final response = await _api.receiptsListReceipts(
        flowStatus: FlowStatus.taskAssignment,
        keyword: keyword,
      );
      if (!ref.mounted) return;
      final items = response.data?.items ?? BuiltList<SampleReceipt>();
      if (items.isEmpty) {
        state = TaskQueueEmpty(keyword: keyword);
      } else {
        state = TaskQueueLoaded(
          items: items,
          selectedIds: BuiltSet<String>(),
          keyword: keyword,
        );
      }
    } on DioException catch (e) {
      if (!ref.mounted) return;
      state = TaskQueueError(message: _mapError(e));
    }
  }

  void toggleSelect(String id) {
    final cur = state;
    if (cur is! TaskQueueLoaded) return;
    final builder = cur.selectedIds.toBuilder();
    if (!builder.remove(id)) builder.add(id);
    state = TaskQueueLoaded(
      items: cur.items,
      selectedIds: builder.build(),
      keyword: cur.keyword,
    );
  }

  String _mapError(DioException e) {
    if (e.response == null) return '无法连接服务器';
    return '加载失败，请重试';
  }
}

/// autoDispose（receiptListControllerProvider 同口径：页级业务 provider
/// 随页 pop 即 dispose，杜绝陈旧选择跨页渗漏）。
final taskQueueControllerProvider =
    NotifierProvider.autoDispose<TaskQueueController, TaskQueueState>(
      TaskQueueController.new,
    );
