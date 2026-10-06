import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_providers.dart';

sealed class ReceiptFormState {
  // const 基构造：子态全是 const 构造（缺它编译红——Phase 1 AuthState 同款）。
  const ReceiptFormState();
}

class ReceiptFormIdle extends ReceiptFormState {
  const ReceiptFormIdle();
}

class ReceiptFormSubmitting extends ReceiptFormState {
  const ReceiptFormSubmitting();
}

class ReceiptFormSuccess extends ReceiptFormState {
  const ReceiptFormSuccess(this.receipt);
  final SampleReceipt receipt;
}

class ReceiptFormError extends ReceiptFormState {
  const ReceiptFormError(this.message);
  final String message;
}

class ReceiptFormController extends Notifier<ReceiptFormState> {
  late final ReceiptsApi _api;

  @override
  ReceiptFormState build() {
    _api = ref.watch(receiptsApiProvider);
    return const ReceiptFormIdle();
  }

  /// submitting 期再调 = no-op（防抖，Review Focus 5）。
  /// autoDispose 后 await 间隙 provider 可能已 dispose（页面 pop）——醒来先查
  /// ref.mounted，陈旧响应丢弃不写 state（其余 controller 同纪律）。
  Future<void> submitCreate(CreateSampleReceiptRequest req) async {
    if (state is ReceiptFormSubmitting) return;
    state = const ReceiptFormSubmitting();
    try {
      final resp = await _api.receiptsCreateReceipt(
        createSampleReceiptRequest: req,
      );
      if (!ref.mounted) return;
      state = ReceiptFormSuccess(resp.data!);
    } on DioException catch (e) {
      if (!ref.mounted) return;
      state = ReceiptFormError(_mapError(e));
    }
  }

  /// T5b 更正注释：本页发全部表单字段（UpdateSampleReceiptRequest 全字段
  /// 可空，但页侧逐字段赋值），空文本即发空值——非 partial-payload，勿按
  /// 「仅携带变更字段」假设改这里。
  Future<void> submitUpdate({
    required String id,
    required UpdateSampleReceiptRequest req,
  }) async {
    if (state is ReceiptFormSubmitting) return;
    state = const ReceiptFormSubmitting();
    try {
      final resp = await _api.receiptsUpdateReceipt(
        id: id,
        updateSampleReceiptRequest: req,
      );
      if (!ref.mounted) return;
      state = ReceiptFormSuccess(resp.data!);
    } on DioException catch (e) {
      if (!ref.mounted) return;
      state = ReceiptFormError(_mapError(e));
    }
  }

  String _mapError(DioException e) {
    if (e.response == null) return '无法连接服务器';
    if (e.response!.statusCode == 422) return '保存失败：数据未通过校验';
    return '保存失败，请重试'; // T5c：本页只有保存动作，报「保存」不报「加载」
  }
}

/// autoDispose（终审 T5d/C-1 收口）：Success 态不再永驻，表单关页即复位。
final receiptFormControllerProvider =
    NotifierProvider.autoDispose<ReceiptFormController, ReceiptFormState>(
      ReceiptFormController.new,
    );
