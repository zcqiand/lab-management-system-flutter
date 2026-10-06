import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_form_controller.dart';
import 'receipt_list_controller.dart';

/// 创建/编辑共用表单（M03.F01.I02）。
class ReceiptFormPage extends ConsumerStatefulWidget {
  const ReceiptFormPage({this.existing, super.key});

  final SampleReceipt? existing;

  @override
  ConsumerState<ReceiptFormPage> createState() => _ReceiptFormPageState();
}

class _ReceiptFormPageState extends ConsumerState<ReceiptFormPage> {
  final _formKey = GlobalKey<FormState>();
  late final _commissionCode = TextEditingController();
  late final _commissionDate = TextEditingController();
  late final _categoryCode = TextEditingController();
  late final _receivedBy = TextEditingController();
  late final _sampleSource = TextEditingController();
  late final _testCategory = TextEditingController();
  late final _contractId = TextEditingController();
  final _judgmentBasis = TextEditingController();
  final _testingBasis = TextEditingController();
  final _testParameters = TextEditingController();

  @override
  void initState() {
    super.initState();
    final e = widget.existing;
    _commissionCode.text = e?.commissionCode ?? '';
    _commissionDate.text = e?.commissionDate ?? '';
    _categoryCode.text = e?.categoryCode ?? '';
    _receivedBy.text = e?.receivedBy ?? '';
    _sampleSource.text = e?.sampleSource ?? '';
    _testCategory.text = e?.testCategory ?? '';
    _contractId.text = e?.contractId ?? '';
    _judgmentBasis.text = e?.judgmentBasis?.join('\n') ?? '';
    _testingBasis.text = e?.testingBasis?.join('\n') ?? '';
    _testParameters.text = e?.testParameters?.join('\n') ?? '';
  }

  @override
  void dispose() {
    for (final c in [
      _commissionCode,
      _commissionDate,
      _categoryCode,
      _receivedBy,
      _sampleSource,
      _testCategory,
      _contractId,
      _judgmentBasis,
      _testingBasis,
      _testParameters,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  void _submit() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final e = widget.existing;
    if (e == null) {
      ref
          .read(receiptFormControllerProvider.notifier)
          .submitCreate(
            CreateSampleReceiptRequest(
              (b) => b
                ..contractId = _contractId.text.trim()
                ..commissionCode = _commissionCode.text.trim()
                ..commissionDate = _commissionDate.text.trim()
                ..categoryCode = _categoryCode.text.trim()
                ..receivedBy = _receivedBy.text.trim()
                ..sampleSource = _sampleSource.text.trim()
                ..testCategory = _testCategory.text.trim()
                ..judgmentBasis = _lines(_judgmentBasis.text)
                ..testingBasis = _lines(_testingBasis.text)
                ..testParameters = _lines(_testParameters.text),
            ),
          );
    } else {
      ref
          .read(receiptFormControllerProvider.notifier)
          .submitUpdate(
            id: e.id,
            req: UpdateSampleReceiptRequest(
              (b) => b
                ..contractId = _contractId.text.trim()
                ..commissionCode = _commissionCode.text.trim()
                ..commissionDate = _commissionDate.text.trim()
                ..categoryCode = _categoryCode.text.trim()
                ..receivedBy = _receivedBy.text.trim()
                ..sampleSource = _sampleSource.text.trim()
                ..testCategory = _testCategory.text.trim()
                ..judgmentBasis = _lines(_judgmentBasis.text)
                ..testingBasis = _lines(_testingBasis.text)
                ..testParameters = _lines(_testParameters.text),
            ),
          );
    }
  }

  /// 多行文本 → 每行一项；空行/首尾空白剔除。
  /// 返回 ListBuilder 而非 BuiltList——生成 builder 的 setter 形参是
  /// `ListBuilder<String>?`（盘上核实 create/update .g.dart），BuiltList
  /// 直塞是编译错。
  ListBuilder<String> _lines(String text) => ListBuilder<String>(
    text.split('\n').map((s) => s.trim()).where((s) => s.isNotEmpty),
  );

  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(receiptFormControllerProvider);
    ref.listen<ReceiptFormState>(receiptFormControllerProvider, (prev, next) {
      if (next is ReceiptFormSuccess) {
        // 成功后回列表：保活过滤器原样带回，silent 刷新不闪 loading。
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
      if (next is ReceiptFormError) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(next.message)));
      }
    });
    return Scaffold(
      appBar: AppBar(title: Text(widget.existing == null ? '新建接样单' : '编辑接样单')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _req(_commissionCode, '委托编号'),
            _req(_commissionDate, '委托日期'),
            _req(_categoryCode, '报告类别'),
            _req(_receivedBy, '接收人'),
            _req(_sampleSource, '样品来源'),
            _req(_testCategory, '检测性质'),
            _req(_contractId, '合同 ID'),
            TextFormField(
              controller: _judgmentBasis,
              decoration: const InputDecoration(labelText: '判定依据（每行一项）'),
              maxLines: 3,
            ),
            TextFormField(
              controller: _testingBasis,
              decoration: const InputDecoration(labelText: '检测依据（每行一项）'),
              maxLines: 3,
            ),
            TextFormField(
              controller: _testParameters,
              decoration: const InputDecoration(labelText: '检测参数（每行一项）'),
              maxLines: 3,
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: formState is ReceiptFormSubmitting ? null : _submit,
              child: formState is ReceiptFormSubmitting
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('保存'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _req(TextEditingController c, String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        controller: c,
        decoration: InputDecoration(labelText: label),
        validator: (v) => (v == null || v.trim().isEmpty) ? '必填' : null,
      ),
    );
  }
}
