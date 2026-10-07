import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/features/receipts/receipt_list_controller.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart';

/// 账户页（REQ-2026-011 M00.F01）：GET /api/auth/me 渲染当前用户 +
/// 关联租户列表 + 当前租户标记。非当前租户行「切换」（M00.F02.I01）：
/// POST /auth/switch-tenant 换发 token 对落 store → 接样列表整表刷新
/// （新 token 即新租户数据域）+ 会话重取。错误态重试。
class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({super.key});

  @override
  ConsumerState<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends ConsumerState<AccountPage> {
  CurrentUserSession? _session;
  String? _error;
  String? _switchingId;

  @override
  void initState() {
    super.initState();
    Future.microtask(_load);
  }

  Future<void> _load() async {
    try {
      final resp = await ref.read(authApiProvider).authGetCurrentUser();
      if (!mounted) return;
      setState(() {
        _session = resp.data!;
        _error = null;
      });
    } on Exception {
      if (!mounted) return;
      setState(() => _error = '无法连接服务器');
    }
  }

  /// 切换（M00.F02.I01）：成功后 invalidate 接样列表（autoDispose 重建，
  /// ReceiptsListPage 挂着监听原地更新）+ 会话重取；失败不动 store。
  Future<void> _switch(MyTenant t) async {
    final scaffold = ScaffoldMessenger.of(context);
    setState(() => _switchingId = t.tenantId);
    final ok = await ref
        .read(authControllerProvider.notifier)
        .switchTenant(t.tenantId);
    if (!mounted) return;
    if (!ok) {
      setState(() => _switchingId = null);
      scaffold.showSnackBar(const SnackBar(content: Text('切换失败，请重试')));
      return;
    }
    // 整表刷新：接样列表 load() 在新 token 数据域重拉（shell 页常挂监听，
    // 原地更新；勿 invalidate——invalidate 后立刻 read .notifier 会拿到
    // 已弃用 notifier 而同步抛，_switch 后续全断）。
    ref.read(receiptListControllerProvider.notifier).load();
    await _load();
    if (!mounted) return;
    setState(() => _switchingId = null);
    scaffold.showSnackBar(SnackBar(content: Text('已切换到 ${t.name}')));
  }

  @override
  Widget build(BuildContext context) {
    Widget body;
    if (_error != null) {
      body = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(_error!),
            TextButton(onPressed: _load, child: const Text('重试')),
          ],
        ),
      );
    } else if (_session == null) {
      body = const Center(child: CircularProgressIndicator());
    } else {
      final s = _session!;
      body = ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    s.user.displayName?.isNotEmpty == true
                        ? s.user.displayName!
                        : s.user.username,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4),
                  Text('用户名：${s.user.username}'),
                  if (s.user.roleCode != null) Text('角色：${s.user.roleCode}'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text('关联租户', style: Theme.of(context).textTheme.titleSmall),
          ...s.tenants.map((t) {
            final current = t.tenantId == s.currentTenantId;
            return ListTile(
              leading: const Icon(Icons.business_outlined),
              title: Text(t.name),
              subtitle: Text(t.code),
              trailing: current
                  ? const Chip(label: Text('当前'))
                  : _switchingId == t.tenantId
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : TextButton(
                      onPressed: () => _switch(t),
                      child: const Text('切换'),
                    ),
            );
          }),
        ],
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('账户')),
      body: body,
    );
  }
}
