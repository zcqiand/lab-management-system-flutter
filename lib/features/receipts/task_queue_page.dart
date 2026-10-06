// @entry M03.F02.I01
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/core/auth/auth_state.dart';
import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_detail_page.dart';
import 'task_assign_dialog.dart';
import 'task_queue_controller.dart';

/// operator 解析链（M03.F01 详情页同款）：displayName 非空优先，否则
/// userId；双空 = 无操作人身份 → act 按钮全禁（ADR-0019）。
String? _resolveOperator(AuthState auth) => switch (auth) {
  Authed(:final userId, :final displayName) =>
    (displayName?.isNotEmpty ?? false) ? displayName : userId,
  _ => null,
};

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
    // act 批量反馈： Acting→Loaded 过渡携 actFeedback 转 SnackBar 上屏，
    // 状态自身保持 Loaded 不翻全屏错误（sample_ext saveError 同款）。
    ref.listen<TaskQueueState>(taskQueueControllerProvider, (prev, next) {
      if (prev is TaskQueueActing &&
          next is TaskQueueLoaded &&
          next.actFeedback != null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(next.actFeedback!)));
      }
    });
    final operator = _resolveOperator(ref.watch(authControllerProvider));
    final acting = queueState is TaskQueueActing;
    final hasSelection =
        queueState is TaskQueueLoaded && queueState.selectedIds.isNotEmpty;
    final actEnabled = hasSelection && !acting && operator != null;
    void runAct(FlowAction action) =>
        ref.read(taskQueueControllerProvider.notifier).runAct(action);
    return Scaffold(
      appBar: AppBar(title: const Text('任务分配')),
      // act 操作条（I05）：仅 Loaded/Acting 态上屏；零勾选/acting/无身份全禁。
      bottomNavigationBar: queueState is TaskQueueLoaded
          ? SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 4, 12, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: actEnabled
                          ? () => runAct(FlowAction.submit)
                          : null,
                      child: const Text('提交到数据录入'),
                    ),
                    TextButton(
                      onPressed: actEnabled
                          ? () => runAct(FlowAction.return_)
                          : null,
                      child: const Text('退回接样'),
                    ),
                    TextButton(
                      onPressed: actEnabled
                          ? () => runAct(FlowAction.withdraw)
                          : null,
                      child: const Text('撤回'),
                    ),
                  ],
                ),
              ),
            )
          : null,
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
