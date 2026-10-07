// @entry M03.F03.I02
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data_entry_sheet_controller.dart';

/// 录入 sheet（M03.F03.I01 sheet 半边 + I02 保存 + I03 改判）：通用单 sheet
/// 形态（swift 同源裁剪；react 满版 12 参数卡不在范围）。样品/参数 Picker +
/// 表单，键 = sampleId#parameterCode，键上既有记录即回填、保存走 PUT。
class DataEntrySheet extends ConsumerStatefulWidget {
  const DataEntrySheet({super.key, required this.receiptId});

  /// 接样单 id（队列行带入；样品目录按它拉取）。
  final String receiptId;

  @override
  ConsumerState<DataEntrySheet> createState() => _DataEntrySheetState();
}

class _DataEntrySheetState extends ConsumerState<DataEntrySheet> {
  final _resultCtrl = TextEditingController();
  final _requirementCtrl = TextEditingController();
  final _standardCtrl = TextEditingController();

  /// 已同步到控制器的键：键切换（含首载）才回灌控制器，键入不打架。
  String? _syncedKey;

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref
          .read(dataEntrySheetControllerProvider(widget.receiptId).notifier)
          .load(),
    );
  }

  @override
  void dispose() {
    _resultCtrl.dispose();
    _requirementCtrl.dispose();
    _standardCtrl.dispose();
    super.dispose();
  }

  void _syncForm(DataEntrySheetLoaded s) {
    final key = '${s.selectedSampleId}#${s.selectedParameterCode}';
    if (_syncedKey == key) return;
    _syncedKey = key;
    _resultCtrl.text = s.result;
    _requirementCtrl.text = s.requirement;
    _standardCtrl.text = s.standardCode;
  }

  Future<void> _save() async {
    final ok = await ref
        .read(dataEntrySheetControllerProvider(widget.receiptId).notifier)
        .save();
    if (!ok || !mounted) return;
    Navigator.pop(context, true); // 队列侧凭 true 出 SnackBar + silent 回刷
  }

  @override
  Widget build(BuildContext context) {
    final sheetState = ref.watch(
      dataEntrySheetControllerProvider(widget.receiptId),
    );
    final notifier = ref.read(
      dataEntrySheetControllerProvider(widget.receiptId).notifier,
    );
    return Scaffold(
      appBar: AppBar(title: const Text('数据录入')),
      body: switch (sheetState) {
        DataEntrySheetLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
        DataEntrySheetError(:final message) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(message),
              const SizedBox(height: 8),
              FilledButton(onPressed: notifier.load, child: const Text('重试')),
            ],
          ),
        ),
        // sealed switch 已收窄为 Loaded，无需 cast。
        DataEntrySheetLoaded() => _buildForm(sheetState, notifier),
      },
    );
  }

  Widget _buildForm(DataEntrySheetLoaded s, DataEntrySheetController notifier) {
    _syncForm(s);
    final saving = s is DataEntrySheetSaving;
    if (s.samples.isEmpty || s.parameters.isEmpty) {
      return const Center(child: Text('该接样单暂无样品或检测参数'));
    }
    // SingleChildScrollView（非 ListView）：表单子项全量常建，测试/辅助
    // 功能可直接定位尾部保存键，不依赖懒构建视口。
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // initialValue 语义只在首建读：程序性改值（键切换回填）靠 ValueKey
          // 重建字段同步显示。
          DropdownButtonFormField<String>(
            key: ValueKey('sample#${s.selectedSampleId}'),
            initialValue: s.selectedSampleId,
            decoration: const InputDecoration(
              labelText: '样品',
              border: OutlineInputBorder(),
            ),
            items: [
              for (final sample in s.samples)
                DropdownMenuItem(
                  value: sample.id,
                  child: Text(sample.sampleCode),
                ),
            ],
            onChanged: saving ? null : (v) => notifier.selectSample(v!),
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<String>(
            key: ValueKey('param#${s.selectedParameterCode}'),
            initialValue: s.selectedParameterCode,
            decoration: const InputDecoration(
              labelText: '检测参数',
              border: OutlineInputBorder(),
            ),
            items: [
              for (final p in s.parameters)
                DropdownMenuItem(value: p.code, child: Text(p.name)),
            ],
            onChanged: saving ? null : (v) => notifier.selectParameter(v!),
          ),
          const SizedBox(height: 12),
          // 键上既有记录标记（AC-2 回填提示）。
          if (s.currentRecord != null)
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text('已有记录，保存将更新'),
            ),
          TextField(
            controller: _resultCtrl,
            decoration: const InputDecoration(
              labelText: '检测结果',
              border: OutlineInputBorder(),
            ),
            enabled: !saving,
            onChanged: (v) => notifier.updateForm(result: v),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _requirementCtrl,
            decoration: const InputDecoration(
              labelText: '技术要求',
              border: OutlineInputBorder(),
            ),
            enabled: !saving,
            onChanged: (v) => notifier.updateForm(requirement: v),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _standardCtrl,
            decoration: const InputDecoration(
              labelText: '标准代号（可选）',
              border: OutlineInputBorder(),
            ),
            enabled: !saving,
            onChanged: (v) => notifier.updateForm(standardCode: v),
          ),
          const SizedBox(height: 12),
          // verdict 选择器（I03 改判）：改值入 state 随保存请求体提交；
          // 「未判定」= null 语义（Q3 裁定：不走专用 setVerdict 端点）。
          DropdownButtonFormField<String>(
            key: ValueKey(
              'verdict#${s.selectedSampleId}#${s.selectedParameterCode}#${s.verdict}',
            ),
            initialValue: s.verdict ?? '未判定',
            decoration: const InputDecoration(
              labelText: '判定',
              border: OutlineInputBorder(),
            ),
            items: const [
              DropdownMenuItem(value: '合格', child: Text('合格')),
              DropdownMenuItem(value: '不合格', child: Text('不合格')),
              DropdownMenuItem(value: '未判定', child: Text('未判定')),
            ],
            onChanged: saving
                ? null
                : (v) {
                    if (v == null || v == '未判定') {
                      notifier.updateForm(clearVerdict: true);
                    } else {
                      notifier.updateForm(verdict: v);
                    }
                  },
          ),
          // 校验/保存错误（AC-5）：fail-fast 与失败共用上屏位。
          if (s.formError != null)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                s.formError!,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: saving ? null : _save,
            child: const Text('保存'),
          ),
        ],
      ),
    );
  }
}
