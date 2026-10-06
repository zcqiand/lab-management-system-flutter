import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_providers.dart';

sealed class ReceiptDetailState {}

class ReceiptDetailLoading extends ReceiptDetailState {}

class ReceiptDetailLoaded extends ReceiptDetailState {
  final SampleReceipt receipt;
  final BuiltList<FlowHistoryEntry> history;
  final BuiltList<Sample> samples;
  ReceiptDetailLoaded({
    required this.receipt,
    required this.history,
    required this.samples,
  });
}

class ReceiptDetailError extends ReceiptDetailState {
  final String message;
  ReceiptDetailError(this.message);
}

class ReceiptDetailController extends Notifier<ReceiptDetailState> {
  late final ReceiptsApi _receiptsApi;
  late final SamplesApi _samplesApi;
  String? _currentId;

  @override
  ReceiptDetailState build() {
    _receiptsApi = ref.watch(receiptsApiProvider);
    _samplesApi = ref.watch(samplesApiProvider);
    return ReceiptDetailLoading();
  }

  Future<void> load({required String id}) async {
    _currentId = id;
    try {
      final detailResp = await _receiptsApi.receiptsGetReceipt(id: id);
      final historyResp = await _receiptsApi.receiptsGetReceiptHistory(id: id);
      final samplesResp = await _samplesApi.samplesListSamples(receiptId: id);
      if (_currentId != id) return; // 过期响应丢弃
      state = ReceiptDetailLoaded(
        receipt: detailResp.data!,
        history: historyResp.data ?? BuiltList<FlowHistoryEntry>(),
        samples: samplesResp.data?.items ?? BuiltList<Sample>(),
      );
    } on DioException catch (e) {
      if (_currentId != id) return;
      state = ReceiptDetailError(_mapError(e));
    }
  }

  String _mapError(DioException e) {
    if (e.response == null) return '无法连接服务器';
    return '加载失败，请重试';
  }
}

final receiptDetailControllerProvider =
    NotifierProvider<ReceiptDetailController, ReceiptDetailState>(
      ReceiptDetailController.new,
    );
