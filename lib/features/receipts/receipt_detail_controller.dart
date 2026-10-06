import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_providers.dart';

/// const 基构造：Deleted 子态 const 构造需要（ReceiptListState 同款）。
sealed class ReceiptDetailState {
  const ReceiptDetailState();
}

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

/// 删除成功（M03.F01.I03，后端 204 级联删样品）：页面监听此态 →
/// 列表 silent 刷新（保过滤器）+ pop 回列表。
class ReceiptDetailDeleted extends ReceiptDetailState {
  const ReceiptDetailDeleted();
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

  /// autoDispose 后 await 间隙 provider 可能已 dispose（页面 pop）——醒来先查
  /// ref.mounted，陈旧响应丢弃不写 state（receiptListController 同纪律）。
  Future<void> load({required String id}) async {
    _currentId = id;
    try {
      final detailResp = await _receiptsApi.receiptsGetReceipt(id: id);
      final historyResp = await _receiptsApi.receiptsGetReceiptHistory(id: id);
      final samplesResp = await _samplesApi.samplesListSamples(receiptId: id);
      if (_currentId != id) return; // 过期响应丢弃
      if (!ref.mounted) return; // autoDispose：页面 pop 后丢陈旧响应
      state = ReceiptDetailLoaded(
        receipt: detailResp.data!,
        history: historyResp.data ?? BuiltList<FlowHistoryEntry>(),
        samples: samplesResp.data?.items ?? BuiltList<Sample>(),
      );
    } on DioException catch (e) {
      if (_currentId != id) return;
      if (!ref.mounted) return;
      state = ReceiptDetailError(_mapError(e));
    }
  }

  bool _deleting = false;

  /// 删除接样单（M03.F01.I03）。防重入：删除进行期再点 = no-op；
  /// 成功 → [ReceiptDetailDeleted]；失败 → [ReceiptDetailError]（G-10）。
  Future<void> delete() async {
    final id = _currentId;
    if (id == null || _deleting) return;
    _deleting = true;
    try {
      await _receiptsApi.receiptsDeleteReceipt(id: id);
      if (!ref.mounted) return; // autoDispose：页面 pop 后丢陈旧响应
      state = const ReceiptDetailDeleted();
    } on DioException catch (e) {
      if (!ref.mounted) return;
      state = ReceiptDetailError(_mapError(e));
    } finally {
      _deleting = false;
    }
  }

  /// 操作人身份（页侧 initState 按 displayName→userId 链解析写入；
  /// null = 无身份，act 按钮禁用、act() 不可达——fail-fast，ADR-0019）。
  String? operatorName;

  bool _acting = false;

  /// act 三动作（M03.F01.I04 提交 / I08 三动作）。进行期再调 = no-op（防抖）。
  /// 成功 → `load` 重载（新 flowStatus + history 增量）；422（RETURN 无前置）→
  /// 专文案「当前阶段不可退回」；其余 DioException → G-10 三分支。
  Future<void> act(FlowAction action) async {
    final id = _currentId;
    if (id == null || _acting) return;
    _acting = true;
    try {
      await _receiptsApi.receiptsActFlowReceiving(
        flowActionRequest: FlowActionRequest(
          (b) => b
            ..ids = ListBuilder<String>([id])
            ..action = action
            ..operator_ = operatorName!,
        ),
      );
      await load(id: id); // 新 flowStatus + history 增量
    } on DioException catch (e) {
      if (!_acting) return;
      if (!ref.mounted) return; // autoDispose：页面 pop 后丢陈旧响应
      if (e.response?.statusCode == 422) {
        state = ReceiptDetailError('当前阶段不可退回');
      } else {
        state = ReceiptDetailError(_mapError(e));
      }
    } finally {
      _acting = false;
    }
  }

  String _mapError(DioException e) {
    if (e.response == null) return '无法连接服务器';
    return '加载失败，请重试';
  }
}

/// autoDispose（终审 C-1/I-3 收口，receiptListControllerProvider 同理）：
/// 详情 r-1 → 返回 → r-2 不再首帧闪 r-1 的全字段表。
final receiptDetailControllerProvider =
    NotifierProvider.autoDispose<ReceiptDetailController, ReceiptDetailState>(
      ReceiptDetailController.new,
    );
