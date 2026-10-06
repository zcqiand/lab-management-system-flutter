import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'receipt_detail_controller.dart';
import 'sample_ext_controller.dart';

/// ext 字段补录（M03.F01.I07）：四型控件 + 合并保存。
class SampleExtPage extends ConsumerStatefulWidget {
  const SampleExtPage({
    required this.sample,
    required this.categoryCode,
    super.key,
  });

  final Sample sample;
  final String categoryCode;

  @override
  ConsumerState<SampleExtPage> createState() => _SampleExtPageState();
}

class _SampleExtPageState extends ConsumerState<SampleExtPage> {
  final _controllers = <String, TextEditingController>{};
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final notifier = ref.read(sampleExtControllerProvider.notifier);
      notifier.load(categoryCode: widget.categoryCode, sample: widget.sample);
    });
  }

  @override
  void dispose() {
    for (final c in _controllers.values) {
      c.dispose();
    }
    super.dispose();
  }

  TextEditingController _ctrl(String key, String initial) {
    return _controllers.putIfAbsent(
      key,
      () => TextEditingController(text: initial),
    );
  }

  @override
  Widget build(BuildContext context) {
    final extState = ref.watch(sampleExtControllerProvider);
    ref.listen<SampleExtState>(sampleExtControllerProvider, (prev, next) {
      if (next is SampleExtSaved) {
        ref
            .read(receiptDetailControllerProvider.notifier)
            .load(id: widget.sample.receiptId);
        Navigator.of(context).pop();
      }
      if (next is SampleExtError) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(next.message)));
      }
      // 保存失败（T8-2）：controller 回 Ready 保住表单，文案这里 SnackBar
      // 上屏（状态自身仍 Ready，不翻全屏 Error）。
      if (next is SampleExtReady && next.saveError != null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(next.saveError!)));
      }
    });
    return Scaffold(
      appBar: AppBar(title: const Text('ext 补录')),
      body: switch (extState) {
        SampleExtLoading() => const Center(child: CircularProgressIndicator()),
        SampleExtError(:final message) => Center(child: Text(message)),
        SampleExtSaving() => const Center(child: CircularProgressIndicator()),
        SampleExtSaved() => const SizedBox.shrink(),
        SampleExtReady ready => Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              for (final d in ready.defs) _field(context, d, ready),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () {
                  if (!(_formKey.currentState?.validate() ?? false)) return;
                  ref
                      .read(sampleExtControllerProvider.notifier)
                      .save(
                        sample: widget.sample,
                        values: {
                          for (final e in _controllers.entries)
                            e.key: e.value.text,
                        },
                      );
                },
                child: const Text('保存'),
              ),
            ],
          ),
        ),
      },
    );
  }

  Widget _field(BuildContext context, ExtFieldDef d, SampleExtReady ready) {
    final initial = ready.originalExt[d.key] ?? '';
    final hasError = ready.errors.contains(d.key);
    final decoration = InputDecoration(
      labelText: (d.required_ ?? false) ? '${d.label} *' : d.label,
      errorText: hasError ? '必填' : null,
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      // ExtFieldDefType 是 EnumClass 非 sealed：编译器不认穷举，未知值
      // fail-fast（ReceiptResult._resultLabel 同款）。
      child: switch (d.type) {
        ExtFieldDefType.text => TextFormField(
          key: ValueKey('ext-${d.key}'),
          controller: _ctrl(d.key, initial),
          decoration: decoration,
          validator: (v) =>
              ((d.required_ ?? false) && (v == null || v.trim().isEmpty))
              ? '必填'
              : null,
        ),
        ExtFieldDefType.number => TextFormField(
          key: ValueKey('ext-${d.key}'),
          controller: _ctrl(d.key, initial),
          decoration: decoration,
          keyboardType: TextInputType.number,
          validator: (v) {
            final t = v?.trim() ?? '';
            if ((d.required_ ?? false) && t.isEmpty) return '必填';
            if (t.isNotEmpty && num.tryParse(t) == null) return '须为数字';
            return null;
          },
        ),
        ExtFieldDefType.date => TextFormField(
          key: ValueKey('ext-${d.key}'),
          controller: _ctrl(d.key, initial),
          decoration: decoration,
          readOnly: true,
          onTap: () async {
            final picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              _ctrl(d.key, initial).text =
                  '${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}';
            }
          },
        ),
        ExtFieldDefType.select => DropdownButtonFormField<String>(
          key: ValueKey('ext-${d.key}'),
          // value: 已废弃（v3.33 后）——initialValue 同义替换。
          initialValue: ready.originalExt[d.key],
          decoration: decoration,
          // BuiltList 默认工厂非 const（built_collection 5.1.2 现实）。
          items: (d.options ?? BuiltList<String>())
              .map((o) => DropdownMenuItem(value: o, child: Text(o)))
              .toList(),
          onChanged: (v) => _ctrl(d.key, initial).text = v ?? '',
          validator: (v) => ((d.required_ ?? false) && (v == null || v.isEmpty))
              ? '必填'
              : null,
        ),
        _ => throw ArgumentError('未知 ExtFieldDefType: ${d.type.name}'),
      },
    );
  }
}
