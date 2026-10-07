// @entry M01.F05.I06
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_controller.dart';
import 'auth_state.dart';
import 'providers.dart';
import 'sso_flow.dart';
import '../config/app_config.dart';

/// 密码登录页（M01.F05.I06）+ SSO 授权码流入口（REQ-2026-015
/// M01.F05.I03）：发起走 ssoFlow.start（state 落账 → 整页跳 IdP）；
/// 回跳分流在 initState 检测 Uri.base 携 code+state 自动换发（react
/// LoginPage 同款，main 门不改）。submitting/SSO busy 禁用按钮；failed
/// 展示文案。
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key, this.initialUri});

  /// 回跳分流判据来源：生产 Uri.base；测试注入假回跳 URL。
  final Uri? initialUri;

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  bool _ssoBusy = false;
  String? _ssoError;

  @override
  void initState() {
    super.initState();
    // 阶段 2 回跳：IdP 重定向回 redirect_uri 携 ?code=&state= → 自动换发。
    if (SsoFlow.hasCallbackParams(widget.initialUri ?? Uri.base)) {
      Future.microtask(() => _ssoHandleCallback(widget.initialUri ?? Uri.base));
    }
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  /// 阶段 1 发起：state 落账 → authorize → 整页跳 IdP（web 换域后本页
  /// 随导航消失；错误回显在返回时可见）。
  Future<void> _ssoStart() async {
    setState(() {
      _ssoBusy = true;
      _ssoError = null;
    });
    final err = await ref
        .read(ssoFlowProvider)
        .start(
          clientId: AppConfig.saasClientId,
          redirectUri: SsoFlow.webRedirectUri(Uri.base),
        );
    if (!mounted) return;
    setState(() {
      _ssoBusy = false;
      _ssoError = err;
    });
  }

  /// 阶段 2 回跳换发：成功 adopt 切 Authed（本页随门换出）；失败回显。
  Future<void> _ssoHandleCallback(Uri uri) async {
    setState(() {
      _ssoBusy = true;
      _ssoError = null;
    });
    final err = await ref.read(ssoFlowProvider).handleCallback(uri);
    if (!mounted) return;
    setState(() {
      _ssoBusy = false;
      _ssoError = err;
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);
    final submitting = authState is AuthSubmitting;
    final locked = submitting || _ssoBusy;

    return Scaffold(
      appBar: AppBar(title: const Text('登录 — Lab 管理系统 Flutter 端')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: SizedBox(
            width: 320,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (authState is AuthFailed)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      authState.message,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                if (_ssoError != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      _ssoError!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                TextField(
                  controller: _username,
                  decoration: const InputDecoration(
                    labelText: '用户名',
                    border: OutlineInputBorder(),
                  ),
                  enabled: !submitting,
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: '密码',
                    border: OutlineInputBorder(),
                  ),
                  enabled: !submitting,
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: submitting
                      ? null
                      : () => ref
                            .read(authControllerProvider.notifier)
                            .login(_username.text.trim(), _password.text),
                  child: Text(submitting ? '登录中…' : '登录'),
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: locked ? null : _ssoStart,
                  child: Text(_ssoBusy ? 'SSO 登录中…' : 'SSO 登录'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
