// @entry M03.F03.I01
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/core/auth/auth_state.dart';
import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'data_entry_queue_controller.dart';
import 'data_entry_sheet.dart';

/// operator 解析链（F02 同款）：displayName 非空优先，否则 userId；双空 =
/// 无操作人身份 → act 按钮全禁（ADR-0019）。
String? _resolveOperator(AuthState auth) => switch (auth) {
  Authed(:final userId, :final displayName) =>
    (displayName?.isNotEmpty ?? false) ? displayName : userId,
  _ => null,
};

/// 数据录入队列（M03.F03.I01）：data_entry 阶段单 + keyword 过滤 + 多选
/// （act 批量，I12）+ 行点开录入 sheet（I01 sheet 半边入口）。
class DataEntryQueuePage extends ConsumerStatefulWidget {
  const DataEntryQueuePage({super.key});

  @override
  ConsumerState<DataEntryQueuePage> createState() => _DataEntryQueuePageState();
}

class _DataEntryQueuePageState extends ConsumerState<DataEntryQueuePage> {
  final _keywordCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(dataEntryQueueControllerProvider.notifier).load(),
    );
  }

  @override
  void dispose() {
    _keywordCtrl.dispose();
    super.dispose();
  }

  // 录入 sheet 入口（I01→I02/I03）：收窗（保存成功或返回）后静默刷回——
  // 保存结果落库后行面无需变化，但 act/保存并发可能移动阶段，silent 回刷兜底。
  Future<void> _openSheet(SampleReceipt r) async {
    final saved = await Navigator.push<bool>(
      context,
      MaterialPageRoute<bool>(builder: (_) => DataEntrySheet(receiptId: r.id)),
    );
    if (!mounted) return;
    if (saved ?? false) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('保存成功')));
    }
    final kw = _keywordCtrl.text.trim();
    await ref
        .read(dataEntryQueueControllerProvider.notifier)
        .load(keyword: kw.isEmpty ? null : kw, silent: true);
  }

  void _submitKeyword() {
    final kw = _keywordCtrl.text.trim();
    ref
        .read(dataEntryQueueControllerProvider.notifier)
        .load(keyword: kw.isEmpty ? null : kw);
  }

  @override
  Widget build(BuildContext context) {
    final queueState = ref.watch(dataEntryQueueControllerProvider);
    // act 批量反馈：Acting→Loaded 过渡携 actFeedback 转 SnackBar 上屏（F02 同款）。
    ref.listen<DataEntryQueueState>(dataEntryQueueControllerProvider, (
      prev,
      next,
    ) {
      if (prev is DataEntryQueueActing &&
          next is DataEntryQueueLoaded &&
          next.actFeedback != null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(next.actFeedback!)));
      }
    });
    final operator = _resolveOperator(ref.watch(authControllerProvider));
    final acting = queueState is DataEntryQueueActing;
    final hasSelection =
        queueState is DataEntryQueueLoaded && queueState.selectedIds.isNotEmpty;
    final actEnabled = hasSelection && !acting && operator != null;
    void runAct(FlowAction action) =>
        ref.read(dataEntryQueueControllerProvider.notifier).runAct(action);
    return Scaffold(
      appBar: AppBar(title: const Text('数据录入')),
      // act 操作条（I12）：仅 Loaded/Acting 态上屏；零勾选/acting/无身份全禁。
      bottomNavigationBar: queueState is DataEntryQueueLoaded
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
                      child: const Text('提交到报告审核'),
                    ),
                    TextButton(
                      onPressed: actEnabled
                          ? () => runAct(FlowAction.return_)
                          : null,
                      child: const Text('退回任务分配'),
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
              DataEntryQueueLoading() => const Center(
                child: CircularProgressIndicator(),
              ),
              DataEntryQueueEmpty() => const Center(child: Text('暂无待录入任务')),
              DataEntryQueueError(:final message) => Center(
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
              DataEntryQueueLoaded(:final items, :final selectedIds) =>
                RefreshIndicator(
                  onRefresh: () {
                    final kw = _keywordCtrl.text.trim();
                    return ref
                        .read(dataEntryQueueControllerProvider.notifier)
                        .load(keyword: kw.isEmpty ? null : kw, silent: true);
                  },
                  child: ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, i) {
                      final r = items[i];
                      // ListTile + leading Checkbox（非 CheckboxListTile）：
                      // 后者内层 InkWell 吞整行点击（onChanged 非 null 时），
                      // 行体「点开录入 sheet」将永远收不到 tap。
                      return ListTile(
                        leading: Checkbox(
                          value: selectedIds.contains(r.id),
                          onChanged: (_) => ref
                              .read(dataEntryQueueControllerProvider.notifier)
                              .toggleSelect(r.id),
                        ),
                        title: Text(
                          '${r.commissionCode}（${r.projectName ?? '未填项目名'}）',
                        ),
                        // 队列行恒为 data_entry 阶段（服务端过滤保证），状态
                        // 列冗余不展示；subtitle 呈接收人 + 委托日期（均必填）。
                        subtitle: Text('${r.receivedBy} · ${r.commissionDate}'),
                        onTap: () => _openSheet(r),
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
