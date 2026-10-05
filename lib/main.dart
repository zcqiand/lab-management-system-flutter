import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/config/app_config.dart';

void main() {
  AppConfig.validate(); // fail-fast：配置缺失不进 UI（suite 硬规则 §1）
  runApp(const ProviderScope(child: LabFlutterApp()));
}

class LabFlutterApp extends StatelessWidget {
  const LabFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '实验室管理系统',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('实验室管理系统 Flutter 端')),
        body: const Center(child: Text('Phase 0b 骨架：功能随 Phase 1+ 落地')),
      ),
    );
  }
}
