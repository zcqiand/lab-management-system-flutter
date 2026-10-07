// @entry M03.F05.I01
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/core/auth/auth_state.dart';
import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'report_phase_queue_controller.dart';

/// operator 解析链（F02/F03 同款）：displayName 非空优先，否则 userId；
/// 双空 = 无操作人身份 → act 按钮全禁（ADR-0019）。
String? _resolveOperator(AuthState auth) => switch (auth) {
  Authed(:final userId, :final displayName) =>
    (displayName?.isNotEmpty ?? false) ? displayName : userId,
  _ => null,
};

/// 阶段页 UI 文案表（树 M03.F05-F08 I01/I02）：标题 + act 按钮文案。
class _PhaseUi {
  const _PhaseUi(this.title, this.submitLabel, this.returnLabel);
  final String title;
  final String submitLabel;
  final String returnLabel;
}

_PhaseUi _phaseUi(FlowStatus phase) => switch (phase) {
  FlowStatus.review => const _PhaseUi('报告审核', '审核通过', '退回数据录入'),
  FlowStatus.approval => const _PhaseUi('报告批准', '批准', '退回审核'),
  FlowStatus.issuance => const _PhaseUi('报告发放', '发放', '退回批准'),
  FlowStatus.archived => const _PhaseUi('报告归档', '归档完成', '退回发放'),
  _ => const _PhaseUi('报告流程', '提交', '退回'),
};

/// 报告阶段队列页（M03.F05-F08 I01 通用：审核/批准/发放/归档四入口共用，
/// 按 [phase] 参数化；F03 数据录入队列同构克隆）。keyword 过滤 + 多选 act
/// 三动作（I02 提交/退回 + I05·I07 撤回）+ 行上呈现 reportCode（F07.I02）。
class ReportPhaseQueuePage extends ConsumerStatefulWidget {
  const ReportPhaseQueuePage({super.key, required this.phase});

  /// 本队列固定阶段。
  final FlowStatus phase;

  @override
  ConsumerState<ReportPhaseQueuePage> createState() =>
      _ReportPhaseQueuePageState();
}

class _ReportPhaseQueuePageState extends ConsumerState<ReportPhaseQueuePage> {
  final _keywordCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref
          .read(reportPhaseQueueControllerProvider(widget.phase).notifier)
          .load(),
    );
  }

  @override
  void dispose() {
    _keywordCtrl.dispose();
    super.dispose();
  }

  void _submitKeyword() {
    final kw = _keywordCtrl.text.trim();
    ref
        .read(reportPhaseQueueControllerProvider(widget.phase).notifier)
        .load(keyword: kw.isEmpty ? null : kw);
  }

  @override
  Widget build(BuildContext context) {
    final ui = _phaseUi(widget.phase);
    final queueState = ref.watch(
      reportPhaseQueueControllerProvider(widget.phase),
    );
    // act 批量反馈：Acting→Loaded 过渡携 actFeedback 转 SnackBar 上屏（F03 同款）。
    ref.listen<ReportPhaseQueueState>(
      reportPhaseQueueControllerProvider(widget.phase),
      (prev, next) {
        if (prev is ReportPhaseQueueActing &&
            next is ReportPhaseQueueLoaded &&
            next.actFeedback != null) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(next.actFeedback!)));
        }
      },
    );
    final operator = _resolveOperator(ref.watch(authControllerProvider));
    final acting = queueState is ReportPhaseQueueActing;
    final hasSelection =
        queueState is ReportPhaseQueueLoaded &&
        queueState.selectedIds.isNotEmpty;
    final actEnabled = hasSelection && !acting && operator != null;
    void runAct(FlowAction action) => ref
        .read(reportPhaseQueueControllerProvider(widget.phase).notifier)
        .runAct(action);
    return Scaffold(
      appBar: AppBar(title: Text(ui.title)),
      // act 操作条（I02 + I05·I07 撤回语义）：仅 Loaded/Acting 态上屏；
      // 零勾选/acting/无身份全禁。
      bottomNavigationBar: queueState is ReportPhaseQueueLoaded
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
                      child: Text(ui.submitLabel),
                    ),
                    TextButton(
                      onPressed: actEnabled
                          ? () => runAct(FlowAction.return_)
                          : null,
                      child: Text(ui.returnLabel),
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
              ReportPhaseQueueLoading() => const Center(
                child: CircularProgressIndicator(),
              ),
              ReportPhaseQueueEmpty() => const Center(child: Text('暂无待办任务')),
              ReportPhaseQueueError(:final message) => Center(
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
              ReportPhaseQueueLoaded(:final items, :final selectedIds) =>
                RefreshIndicator(
                  onRefresh: () {
                    final kw = _keywordCtrl.text.trim();
                    return ref
                        .read(
                          reportPhaseQueueControllerProvider(widget.phase)
                              .notifier,
                        )
                        .load(keyword: kw.isEmpty ? null : kw, silent: true);
                  },
                  child: ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, i) {
                      final r = items[i];
                      // ListTile + leading Checkbox（非 CheckboxListTile）：
                      // 后者内层 InkWell 吞整行点击（F03 实证）——本页虽无
                      // 行点开动作，结构保持同构。
                      return ListTile(
                        leading: Checkbox(
                          value: selectedIds.contains(r.id),
                          onChanged: (_) => ref
                              .read(
                                reportPhaseQueueControllerProvider(widget.phase)
                                    .notifier,
                              )
                              .toggleSelect(r.id),
                        ),
                        title: Text(
                          '${r.commissionCode}（${r.projectName ?? '未填项目名'}）',
                        ),
                        subtitle: Text('${r.receivedBy} · ${r.commissionDate}'),
                        // 报告编号行上呈现（F07.I02）：发放 act 语义生成后随单。
                        trailing: r.reportCode == null
                            ? null
                            : Text(r.reportCode!),
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
