// @entry M03.F02.I01
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_detail_page.dart';
import 'task_assign_dialog.dart';
import 'task_queue_controller.dart';

/// 任务分配队列（M03.F02.I01）：task_assignment 阶段单 + keyword 过滤 +
/// 多选（act 批量，I05）+「安排」入口（I02）。
class TaskQueuePage extends ConsumerStatefulWidget {
  const TaskQueuePage({super.key});

  @override
  ConsumerState<TaskQueuePage> createState() => _TaskQueuePageState();
}

class _TaskQueuePageState extends ConsumerState<TaskQueuePage> {
  final _keywordCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(taskQueueControllerProvider.notifier).load(),
    );
  }

  @override
  void dispose() {
    _keywordCtrl.dispose();
    super.dispose();
  }

  // 「安排」（I02 入口）：showDialog 承载安排弹窗；收窗（保存成功或取消）
  // 后静默刷回——安排结果回行 subtitle，loading 不闪。
  Future<void> _openAssign(SampleReceipt r) async {
    await showDialog<void>(
      context: context,
      builder: (_) => TaskAssignDialog(receipt: r),
    );
    if (!mounted) return;
    final kw = _keywordCtrl.text.trim();
    await ref
        .read(taskQueueControllerProvider.notifier)
        .load(keyword: kw.isEmpty ? null : kw, silent: true);
  }

  void _submitKeyword() {
    final kw = _keywordCtrl.text.trim();
    ref
        .read(taskQueueControllerProvider.notifier)
        .load(keyword: kw.isEmpty ? null : kw);
  }

  @override
  Widget build(BuildContext context) {
    final queueState = ref.watch(taskQueueControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('任务分配')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: TextField(
              controller: _keywordCtrl,
              decoration: const InputDecoration(
                labelText: '关键词',
                border: OutlineInputBorder(),
                isDense: true,
              ),
              onSubmitted: (_) => _submitKeyword(),
            ),
          ),
          Expanded(
            child: switch (queueState) {
              TaskQueueLoading() => const Center(
                child: CircularProgressIndicator(),
              ),
              TaskQueueEmpty() => const Center(child: Text('暂无待分配任务')),
              TaskQueueError(:final message) => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(message),
                    const SizedBox(height: 8),
                    FilledButton(
                      onPressed: _submitKeyword,
                      child: const Text('重试'),
                    ),
                  ],
                ),
              ),
              TaskQueueLoaded(:final items, :final selectedIds) =>
                RefreshIndicator(
                  onRefresh: () {
                    final kw = _keywordCtrl.text.trim();
                    return ref
                        .read(taskQueueControllerProvider.notifier)
                        .load(keyword: kw.isEmpty ? null : kw, silent: true);
                  },
                  child: ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, i) {
                      final r = items[i];
                      final assigned = r.assigneeName != null;
                      // CheckboxListTile 无 onTap：行体点击（非勾选框）进详情，
                      // 外层 GestureDetector 承接，勾选框区域由内层自身消费。
                      return GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (_) => ReceiptDetailPage(receiptId: r.id),
                          ),
                        ),
                        child: CheckboxListTile(
                          value: selectedIds.contains(r.id),
                          onChanged: (_) => ref
                              .read(taskQueueControllerProvider.notifier)
                              .toggleSelect(r.id),
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(
                            '${r.commissionCode}（${r.projectName ?? '未填项目名'}）',
                          ),
                          // 队列行恒为 taskAssignment 阶段（服务端过滤保证），
                          // 状态列冗余故不展示；已安排显示人员+日期，未安排徽标。
                          subtitle: Text(
                            assigned
                                ? '${r.assigneeName} · ${r.plannedTestDate ?? '—'}'
                                : '待安排检测人员',
                          ),
                          secondary: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (!assigned)
                                const Padding(
                                  padding: EdgeInsets.only(right: 4),
                                  child: Text('未安排'),
                                ),
                              IconButton(
                                tooltip: '安排',
                                icon: const Icon(Icons.edit_outlined),
                                onPressed: () => _openAssign(r),
                              ),
                            ],
                          ),
                        ),
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
