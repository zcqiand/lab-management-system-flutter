import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'flow_status_label.dart';
import 'receipt_detail_controller.dart';
import 'receipt_list_controller.dart';

/// 接样单详情（M03.F09.I01 全字段表 + M03.F01.I06/F09.I02 时间线双挂）。
class ReceiptDetailPage extends ConsumerStatefulWidget {
  const ReceiptDetailPage({required this.receiptId, super.key});

  final String receiptId;

  @override
  ConsumerState<ReceiptDetailPage> createState() => _ReceiptDetailPageState();
}

class _ReceiptDetailPageState extends ConsumerState<ReceiptDetailPage> {
  @override
  void initState() {
    super.initState();
    final id = widget.receiptId;
    Future.microtask(
      () => ref.read(receiptDetailControllerProvider.notifier).load(id: id),
    );
  }

  /// 删除确认弹窗（M03.F01.I03）：文案必须明示 CASCADE（同时删下属样品）。
  Future<void> _confirmDelete() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('删除接样单'),
        content: const Text('删除后不可恢复，将同时删除下属样品。确定删除？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('确认删除'),
          ),
        ],
      ),
    );
    if (confirmed == true) {
      await ref.read(receiptDetailControllerProvider.notifier).delete();
    }
  }

  @override
  Widget build(BuildContext context) {
    // 删除成功监听（M03.F01.I03）：回列表 silent 刷新（保过滤器）后 pop——
    // listen 必须挂在 build 内（Riverpod 契约）。
    ref.listen<ReceiptDetailState>(receiptDetailControllerProvider, (
      prev,
      next,
    ) {
      if (next is ReceiptDetailDeleted) {
        final s = ref.read(receiptListControllerProvider);
        final notifier = ref.read(receiptListControllerProvider.notifier);
        if (s is ReceiptListLoaded) {
          notifier.load(
            contractId: s.contractId,
            flowStatus: s.flowStatus,
            keyword: s.keyword,
            silent: true,
          );
        } else {
          notifier.load(silent: true);
        }
        Navigator.of(context).pop();
      }
    });
    final detailState = ref.watch(receiptDetailControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('接样单详情'),
        actions: [
          IconButton(
            tooltip: '删除',
            icon: const Icon(Icons.delete_outline),
            onPressed: _confirmDelete,
          ),
        ],
      ),
      body: switch (detailState) {
        ReceiptDetailLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
        ReceiptDetailError(:final message) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(message),
              const SizedBox(height: 8),
              FilledButton(
                onPressed: () => ref
                    .read(receiptDetailControllerProvider.notifier)
                    .load(id: widget.receiptId),
                child: const Text('重试'),
              ),
            ],
          ),
        ),
        ReceiptDetailLoaded() => _LoadedView(
          receipt: detailState.receipt,
          history: detailState.history,
          samples: detailState.samples,
        ),
        // Deleted 只渲染一帧（监听即 pop）——占位防闪黑，不参与交互。
        ReceiptDetailDeleted() => const Center(
          child: CircularProgressIndicator(),
        ),
      },
    );
  }
}

class _LoadedView extends StatelessWidget {
  const _LoadedView({
    required this.receipt,
    required this.history,
    required this.samples,
  });

  final SampleReceipt receipt;
  final BuiltList<FlowHistoryEntry> history;
  final BuiltList<Sample> samples;

  static const _dash = '—';

  String _resultLabel(ReceiptResult? r) => switch (r) {
    ReceiptResult.pass => '合格',
    ReceiptResult.fail => '不合格',
    ReceiptResult.empty => _dash,
    null => _dash,
    // EnumClass 非 sealed：编译器不认穷举，未知值 fail-fast。
    _ => throw ArgumentError('未知 ReceiptResult: ${r.name}'),
  };

  @override
  Widget build(BuildContext context) {
    final rows = <(String, String)>[
      ('委托编号', receipt.commissionCode),
      ('委托日期', receipt.commissionDate),
      ('工程名称', receipt.projectName ?? _dash),
      ('委托单位', receipt.clientUnit ?? _dash),
      ('建设单位', receipt.buildingUnit ?? _dash),
      ('监理单位', receipt.supervisorUnit ?? _dash),
      ('施工单位', receipt.constructionUnit ?? _dash),
      ('见证单位', receipt.witnessUnit ?? _dash),
      ('见证人', receipt.witness ?? _dash),
      ('送检人', receipt.inspector ?? _dash),
      ('取样地点', receipt.samplingLocation ?? _dash),
      ('报告类别', receipt.categoryCode),
      ('样品来源', receipt.sampleSource),
      ('检测性质', receipt.testCategory),
      ('合同 ID', receipt.contractId),
      ('当前环节', flowStatusLabel(receipt.flowStatus)),
      ('检测结果', _resultLabel(receipt.result)),
      ('检测负责人', receipt.assigneeName ?? _dash),
      ('计划检测日期', receipt.plannedTestDate ?? _dash),
      ('报告编号', receipt.reportCode ?? _dash),
      ('报告日期', receipt.reportDate ?? _dash),
    ];
    final ordered = history.toList()
      ..sort((a, b) => b.at.compareTo(a.at)); // at 为 ISO 字符串，字典序即时序
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text('接样信息', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        for (final (label, value) in rows)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: [
                SizedBox(
                  width: 110,
                  child: Text(
                    label,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(child: Text(value)),
              ],
            ),
          ),
        const Divider(height: 32),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text('样品', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        for (final s in samples)
          ListTile(
            title: Text(s.sampleCode),
            subtitle: s.ext.isEmpty ? null : Text(s.ext.keys.join('、')),
          ),
        const Divider(height: 32),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text('流程历史', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        if (ordered.isEmpty)
          const Padding(padding: EdgeInsets.all(16), child: Text('暂无流转记录'))
        else
          for (final e in ordered)
            ListTile(
              title: Text(flowActionLabel(e.action)),
              subtitle: Text(
                '${flowStatusLabel(e.from)} → ${flowStatusLabel(e.to)} · ${e.operator_}',
              ),
              trailing: Text(e.at),
            ),
      ],
    );
  }
}
