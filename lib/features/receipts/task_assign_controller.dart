import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_providers.dart';

/// 任务安排状态机（M03.F02.I02）。assigneeId 不传（后端三字段 None-跳过
/// patch 语义：传 id 无消费面；取消分配家族规划中，见 REQ-2026-004）。
sealed class TaskAssignState {
  const TaskAssignState();
}

class TaskAssignIdle extends TaskAssignState {
  const TaskAssignIdle();
}

class TaskAssignSaving extends TaskAssignState {
  const TaskAssignSaving();
}

class TaskAssignSaved extends TaskAssignState {
  const TaskAssignSaved({required this.receipt});
  final SampleReceipt receipt;
}

class TaskAssignError extends TaskAssignState {
  const TaskAssignError({required this.message});
  final String message;
}

class TaskAssignController extends Notifier<TaskAssignState> {
  late final ReceiptsApi _api;

  @override
  TaskAssignState build() {
    _api = ref.watch(receiptsApiProvider);
    return const TaskAssignIdle();
  }

  /// saving 期再调是 no-op（双提交防抖，Review Focus 5）。
  /// state=Saving 在首个 await 前同步置位，同帧二次调用必被拦。
  Future<void> assign({
    required String receiptId,
    required String assigneeName,
    required String plannedTestDate,
  }) async {
    if (state is TaskAssignSaving) return;
    state = const TaskAssignSaving();
    try {
      final request = AssignTaskRequest(
        (b) => b
          ..assigneeName = assigneeName
          ..plannedTestDate = plannedTestDate,
      );
      final response = await _api.receiptsAssignTask(
        id: receiptId,
        assignTaskRequest: request,
      );
      if (!ref.mounted) return;
      state = TaskAssignSaved(receipt: response.data!);
    } on DioException catch (e) {
      if (!ref.mounted) return;
      state = TaskAssignError(message: _mapError(e));
    }
  }

  String _mapError(DioException e) {
    if (e.response == null) return '无法连接服务器';
    return '保存失败，请重试';
  }
}

/// autoDispose：弹窗收窗即 dispose，下次打开拿干净 Idle 态。
final taskAssignControllerProvider =
    NotifierProvider.autoDispose<TaskAssignController, TaskAssignState>(
      TaskAssignController.new,
    );
