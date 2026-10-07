import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'report_preview_controller.dart';
import 'sample_ext_page.dart';

/// 报告预览（REQ-2026-016 M03.F09.I03）：数据面摘要（swift
/// ReportPreviewSheet 同构；docx 模板/打印为家族 Web 专属非范围）。
/// Loading 生成预览中 / Error 预览失败+重试 / Ready 分流：空样品 → 暂无
/// 样品；门字段非空 → 先补录（推 SampleExtPage 复用 M03.F01.I07 已上线
/// 页）不渲染预览列表；否则按样品分组渲染记录行。
class ReportPreviewPage extends ConsumerStatefulWidget {
  const ReportPreviewPage({
    required this.receiptId,
    required this.categoryCode,
    super.key,
  });

  final String receiptId;
  final String categoryCode;

  @override
  ConsumerState<ReportPreviewPage> createState() => _ReportPreviewPageState();
}

class _ReportPreviewPageState extends ConsumerState<ReportPreviewPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      if (!mounted) return;
      ref
          .read(reportPreviewControllerProvider.notifier)
          .load(receiptId: widget.receiptId, categoryCode: widget.categoryCode);
    });
  }

  void _reload() {
    ref
        .read(reportPreviewControllerProvider.notifier)
        .load(receiptId: widget.receiptId, categoryCode: widget.categoryCode);
  }

  /// 补录门入口：推已上线补录页，返回即重载（保存成功 → 门消失）。
  Future<void> _openGate() async {
    final preview = ref.read(reportPreviewControllerProvider);
    if (preview is! ReportPreviewReady || preview.samples.isEmpty) return;
    await Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (_) => SampleExtPage(
          sample: preview.samples.first,
          categoryCode: widget.categoryCode,
        ),
      ),
    );
    _reload();
  }

  @override
  Widget build(BuildContext context) {
    final preview = ref.watch(reportPreviewControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('报告预览')),
      body: switch (preview) {
        ReportPreviewLoading() => const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 12),
              Text('生成预览中…'),
            ],
          ),
        ),
        ReportPreviewError(:final message) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('预览失败'),
              const SizedBox(height: 8),
              Text(message),
              const SizedBox(height: 12),
              FilledButton(onPressed: _reload, child: const Text('重试')),
            ],
          ),
        ),
        ReportPreviewReady() => _readyBody(preview),
      },
    );
  }

  Widget _readyBody(ReportPreviewReady ready) {
    if (ready.samples.isEmpty) {
      return const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text('暂无样品'), SizedBox(height: 8), Text('该接样单还没有样品与检测记录')],
        ),
      );
    }
    if (ready.gateFormFields.isNotEmpty) {
      final labels = ready.gateFormFields.map((d) => d.label).join('、');
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('报告预览前需补录样品扩展信息'),
            const SizedBox(height: 8),
            Text('缺少：$labels'),
            const SizedBox(height: 12),
            FilledButton(onPressed: _openGate, child: const Text('去补录')),
          ],
        ),
      );
    }
    return ListView.builder(
      itemCount: ready.samples.length,
      itemBuilder: (context, i) {
        final sample = ready.samples[i];
        final records =
            ready.recordsBySample[sample.id] ?? BuiltList<TestRecord>();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
              child: Text(
                '样品 ${sample.sampleCode}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            if (records.isEmpty)
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('该样品暂无检测记录'),
              )
            else
              ...records.map(
                (r) => ListTile(
                  title: Text(r.parameterCode),
                  subtitle: Text('结果 ${r.result} · 要求 ${r.requirement}'),
                  trailing: Text(r.verdict ?? '—'),
                ),
              ),
          ],
        );
      },
    );
  }
}
