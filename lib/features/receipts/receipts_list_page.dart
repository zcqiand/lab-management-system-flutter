// @entry M03.F01.I01
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'flow_status_label.dart';
import '../account/account_page.dart';
import 'receipt_detail_page.dart';
import 'receipt_form_page.dart';
import 'receipt_list_controller.dart';
import 'data_entry_queue_page.dart';
import 'report_phase_queue_page.dart';
import 'task_queue_page.dart';

/// 接样单列表（M03.F01.I01）。
class ReceiptsListPage extends ConsumerStatefulWidget {
  const ReceiptsListPage({super.key});

  @override
  ConsumerState<ReceiptsListPage> createState() => _ReceiptsListPageState();
}

class _ReceiptsListPageState extends ConsumerState<ReceiptsListPage> {
  // 三过滤值留页侧（I-1，spec §3）：文本未提交不算过滤，提交/下拉改动才
  // 触发 load；刷新从同一来源取参，保证「所见即所刷」。
  final _keywordCtrl = TextEditingController();
  final _contractIdCtrl = TextEditingController();
  FlowStatus? _flowStatus;

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(receiptListControllerProvider.notifier).load(),
    );
  }

  @override
  void dispose() {
    _keywordCtrl.dispose();
    _contractIdCtrl.dispose();
    super.dispose();
  }

  ({String? contractId, FlowStatus? flowStatus, String? keyword})
  get _filters => (
    contractId: _contractIdCtrl.text.trim().isEmpty
        ? null
        : _contractIdCtrl.text.trim(),
    flowStatus: _flowStatus,
    keyword: _keywordCtrl.text.trim().isEmpty ? null : _keywordCtrl.text.trim(),
  );

  void _applyFilters() {
    final f = _filters;
    ref
        .read(receiptListControllerProvider.notifier)
        .load(
          contractId: f.contractId,
          flowStatus: f.flowStatus,
          keyword: f.keyword,
        );
  }

  /// 下拉刷新（保过滤器，终审 T5a 收口）：以过滤区当前值 silent 刷新，
  /// 不闪 Loading（T2a）。
  Future<void> _refresh() {
    final f = _filters;
    return ref
        .read(receiptListControllerProvider.notifier)
        .load(
          contractId: f.contractId,
          flowStatus: f.flowStatus,
          keyword: f.keyword,
          silent: true,
        );
  }

  @override
  Widget build(BuildContext context) {
    final listState = ref.watch(receiptListControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('接样单'),
        actions: [
          // M03.F02.I01 队列入口（流程线第二环节）。
          IconButton(
            tooltip: '任务分配',
            icon: const Icon(Icons.assignment_ind_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<void>(builder: (_) => const TaskQueuePage()),
            ),
          ),
          // M03.F03.I01 队列入口（流程线第三环节）。
          IconButton(
            tooltip: '数据录入',
            icon: const Icon(Icons.edit_note),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) => const DataEntryQueuePage(),
              ),
            ),
          ),
          // M03.F05-F08.I01 队列入口（流程线第四至七环节：审核/批准/发放/归档）。
          IconButton(
            tooltip: '报告审核',
            icon: const Icon(Icons.fact_check_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) =>
                    const ReportPhaseQueuePage(phase: FlowStatus.review),
              ),
            ),
          ),
          IconButton(
            tooltip: '报告批准',
            icon: const Icon(Icons.verified_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) =>
                    const ReportPhaseQueuePage(phase: FlowStatus.approval),
              ),
            ),
          ),
          IconButton(
            tooltip: '报告发放',
            icon: const Icon(Icons.outbound),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) =>
                    const ReportPhaseQueuePage(phase: FlowStatus.issuance),
              ),
            ),
          ),
          IconButton(
            tooltip: '报告归档',
            icon: const Icon(Icons.inventory_2_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) =>
                    const ReportPhaseQueuePage(phase: FlowStatus.archived),
              ),
            ),
          ),
          // 账户入口（REQ-2026-011 M00.F01）：会话渲染 + 租户切换器。
          IconButton(
            tooltip: '账户',
            icon: const Icon(Icons.person_outline),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<void>(builder: (_) => const AccountPage()),
            ),
          ),
          IconButton(
            tooltip: '登出',
            icon: const Icon(Icons.logout),
            onPressed: () => ref.read(authControllerProvider.notifier).logout(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: '新建接样单',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute<void>(builder: (_) => const ReceiptFormPage()),
        ),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _keywordCtrl,
                    decoration: const InputDecoration(
                      labelText: '关键词',
                      isDense: true,
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _applyFilters(),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: _contractIdCtrl,
                    decoration: const InputDecoration(
                      labelText: '合同 ID',
                      isDense: true,
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _applyFilters(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: DropdownButtonFormField<FlowStatus?>(
                // value: 已废弃（v3.33 后）——initialValue 同义替换
                // （sample_ext_page 同注）；onChanged 后字段自管内部态。
                initialValue: _flowStatus,
                decoration: const InputDecoration(
                  labelText: '环节',
                  isDense: true,
                  border: OutlineInputBorder(),
                ),
                items: [
                  const DropdownMenuItem<FlowStatus?>(
                    value: null,
                    child: Text('全部'),
                  ),
                  // FlowStatus 是 EnumClass：values 是 BuiltSet 非 List（G-12
                  // 全 8 值，标签复用 flowStatusLabel，漏值测试先红）。
                  for (final s in FlowStatus.values)
                    DropdownMenuItem<FlowStatus?>(
                      value: s,
                      child: Text(flowStatusLabel(s)),
                    ),
                ],
                onChanged: (v) {
                  setState(() => _flowStatus = v);
                  _applyFilters();
                },
              ),
            ),
          ),
          Expanded(
            child: switch (listState) {
              ReceiptListLoading() => const Center(
                child: CircularProgressIndicator(),
              ),
              ReceiptListEmpty() => const Center(child: Text('暂无接样单')),
              ReceiptListError(:final message) => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(message),
                    const SizedBox(height: 8),
                    FilledButton(
                      onPressed: _applyFilters,
                      child: const Text('重试'),
                    ),
                  ],
                ),
              ),
              ReceiptListLoaded(:final items) => RefreshIndicator(
                onRefresh: _refresh,
                child: ListView.separated(
                  // T3b：列表短于视口（演示数据常态）也能拉动触发下拉刷新。
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, i) {
                    final r = items[i];
                    return ListTile(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (_) => ReceiptDetailPage(receiptId: r.id),
                        ),
                      ),
                      title: Text(
                        '${r.commissionCode}（${r.projectName ?? '未填项目名'}）',
                      ),
                      subtitle: Text(
                        '${r.categoryCode} · ${flowStatusLabel(r.flowStatus)} · ${r.receivedBy}',
                      ),
                      trailing: Text(r.commissionDate),
                    );
                  },
                  separatorBuilder: (_, _) => const Divider(height: 1),
                ),
              ),
            },
          ),
        ],
      ),
    );
  }
}
