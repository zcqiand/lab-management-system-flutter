import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab_management_system_flutter/core/config/app_config.dart';
import 'package:lab_management_system_flutter/main.dart';

void main() {
  group('AppConfig fail-fast', () {
    test('空 base URL 必须 throw（硬规则 §1）', () {
      expect(() => AppConfig.validateBaseUrl(''), throwsStateError);
    });

    test('非空 base URL 通过', () {
      expect(
        () => AppConfig.validateBaseUrl('http://localhost:5201'),
        returnsNormally,
      );
    });
  });

  testWidgets('App 壳可构建', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: LabFlutterApp()));
    expect(find.text('实验室管理系统 Flutter 端'), findsOneWidget);
  });
}
