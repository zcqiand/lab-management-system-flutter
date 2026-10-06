import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_providers.dart';

/// 列表状态机（G-10 三分错误形态）。
sealed class ReceiptListState {
  // const 基构造：子态全是 const 构造（缺它编译红——Phase 1 AuthState 同款）。
  const ReceiptListState();
}

class ReceiptListLoading extends ReceiptListState {
  const ReceiptListLoading();
}

class ReceiptListLoaded extends ReceiptListState {
  const ReceiptListLoaded({
    required this.items,
    this.contractId,
    this.flowStatus,
    this.keyword,
  });
  final BuiltList<SampleReceipt> items;
  final String? contractId;
  final FlowStatus? flowStatus;
  final String? keyword;
}

class ReceiptListEmpty extends ReceiptListState {
  const ReceiptListEmpty({this.contractId, this.flowStatus, this.keyword});
  final String? contractId;
  final FlowStatus? flowStatus;
  final String? keyword;
}

class ReceiptListError extends ReceiptListState {
  const ReceiptListError({required this.message});
  final String message;
}

class ReceiptListController extends Notifier<ReceiptListState> {
  late final ReceiptsApi _api;

  @override
  ReceiptListState build() {
    _api = ref.watch(receiptsApiProvider);
    return const ReceiptListLoading();
  }

  /// silent=true 不闪 loading（下拉刷新复用）。
  Future<void> load({
    String? contractId,
    FlowStatus? flowStatus,
    String? keyword,
    bool silent = false,
  }) async {
    if (!silent) state = const ReceiptListLoading();
    try {
      final response = await _api.receiptsListReceipts(
        contractId: contractId,
        flowStatus: flowStatus,
        keyword: keyword,
      );
      final items = response.data?.items ?? BuiltList<SampleReceipt>();
      if (items.isEmpty) {
        state = ReceiptListEmpty(
          contractId: contractId,
          flowStatus: flowStatus,
          keyword: keyword,
        );
      } else {
        state = ReceiptListLoaded(
          items: items,
          contractId: contractId,
          flowStatus: flowStatus,
          keyword: keyword,
        );
      }
    } on DioException catch (e) {
      state = ReceiptListError(message: _mapError(e));
    }
  }

  String _mapError(DioException e) {
    if (e.response == null) return '无法连接服务器';
    return '加载失败，请重试';
  }
}

/// Produces 契约：NotifierProvider 默认 keepAlive（不挂 autoDispose）。
final receiptListControllerProvider =
    NotifierProvider<ReceiptListController, ReceiptListState>(
  ReceiptListController.new,
);
