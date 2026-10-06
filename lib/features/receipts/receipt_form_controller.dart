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
  Future<void> submitCreate(CreateSampleReceiptRequest req) async {
    if (state is ReceiptFormSubmitting) return;
    state = const ReceiptFormSubmitting();
    try {
      final resp = await _api.receiptsCreateReceipt(
        createSampleReceiptRequest: req,
      );
      state = ReceiptFormSuccess(resp.data!);
    } on DioException catch (e) {
      state = ReceiptFormError(_mapError(e));
    }
  }

  /// PATCH 语义：UpdateSampleReceiptRequest 全字段可空，仅携带变更字段。
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
      state = ReceiptFormSuccess(resp.data!);
    } on DioException catch (e) {
      state = ReceiptFormError(_mapError(e));
    }
  }

  String _mapError(DioException e) {
    if (e.response == null) return '无法连接服务器';
    if (e.response!.statusCode == 422) return '保存失败：数据未通过校验';
    return '加载失败，请重试';
  }
}

final receiptFormControllerProvider =
    NotifierProvider<ReceiptFormController, ReceiptFormState>(
      ReceiptFormController.new,
    );
