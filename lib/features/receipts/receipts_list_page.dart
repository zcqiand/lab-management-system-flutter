// @entry M03.F01.I01
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';

import 'flow_status_label.dart';
import 'receipt_detail_page.dart';
import 'receipt_form_page.dart';
import 'receipt_list_controller.dart';

/// 接样单列表（M03.F01.I01）。
class ReceiptsListPage extends ConsumerStatefulWidget {
  const ReceiptsListPage({super.key});

  @override
  ConsumerState<ReceiptsListPage> createState() => _ReceiptsListPageState();
}

class _ReceiptsListPageState extends ConsumerState<ReceiptsListPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(receiptListControllerProvider.notifier).load(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final listState = ref.watch(receiptListControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('接样单'),
        actions: [
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
      body: switch (listState) {
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
                onPressed: () =>
                    ref.read(receiptListControllerProvider.notifier).load(),
                child: const Text('重试'),
              ),
            ],
          ),
        ),
        ReceiptListLoaded(:final items) => RefreshIndicator(
          onRefresh: () => ref
              .read(receiptListControllerProvider.notifier)
              .load(silent: true),
          child: ListView.separated(
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
                title: Text('${r.commissionCode}（${r.projectName ?? '未填项目名'}）'),
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
    );
  }
}
