// @entry M03.F02.I02
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'task_assign_controller.dart';

/// 任务安排弹窗（M03.F02.I02）：手填检测人员 + 计划检测日期，预填当前值
/// （重安排场景，AC-3）；保存成功后收窗，错误文案上屏不收窗。
class TaskAssignDialog extends ConsumerStatefulWidget {
  const TaskAssignDialog({super.key, required this.receipt});

  final SampleReceipt receipt;

  @override
  ConsumerState<TaskAssignDialog> createState() => _TaskAssignDialogState();
}

class _TaskAssignDialogState extends ConsumerState<TaskAssignDialog> {
  late final TextEditingController _nameCtrl;
  late final TextEditingController _dateCtrl;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.receipt.assigneeName ?? '');
    _dateCtrl = TextEditingController(
      text: widget.receipt.plannedTestDate ?? '',
    );
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _dateCtrl.dispose();
    super.dispose();
  }

  void _save() {
    final name = _nameCtrl.text.trim();
    final date = _dateCtrl.text.trim();
    if (name.isEmpty || date.isEmpty) return; // client 校验：两字段必填
    ref
        .read(taskAssignControllerProvider.notifier)
        .assign(
          receiptId: widget.receipt.id,
          assigneeName: name,
          plannedTestDate: date,
        );
  }

  @override
  Widget build(BuildContext context) {
    final assignState = ref.watch(taskAssignControllerProvider);
    // Saved → 收窗（pop 本页；页外层是 showDialog 场景即关弹窗）
    if (assignState is TaskAssignSaved) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
      });
    }
    final saving = assignState is TaskAssignSaving;
    final error = assignState is TaskAssignError ? assignState.message : null;
    return AlertDialog(
      title: const Text('安排检测'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _nameCtrl,
            decoration: const InputDecoration(labelText: '检测人员'),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _dateCtrl,
            decoration: const InputDecoration(labelText: '计划检测日期（YYYY-MM-DD）'),
          ),
          if (error != null) ...[
            const SizedBox(height: 8),
            Text(
              error,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ],
        ],
      ),
      actions: [
        TextButton(
          onPressed: saving ? null : () => Navigator.of(context).pop(),
          child: const Text('取消'),
        ),
        FilledButton(onPressed: saving ? null : _save, child: const Text('保存')),
      ],
    );
  }
}
