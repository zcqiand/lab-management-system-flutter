import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;
import 'package:lab_management_system_flutter/features/receipts/flow_status_label.dart';
import 'package:lab_management_system_flutter/features/receipts/receipt_list_controller.dart';

import '../../fakes/throwing_adapter.dart';
import '../../support/receipt_fixtures.dart';

/// 测试装配：dioProvider override 成 rig 的裸 Dio（G-6：链上无 interceptor）。
ProviderContainer _container(Dio dio) => ProviderContainer(
      overrides: [dioProvider.overrideWithValue(dio)],
    );

void main() {
  test('初态 loading', () async {
    final (dio, adapter) = receiptRig();
    adapter.onGet(
      '/api/receipts',
      (server) => server.reply(200, receiptListJson([receiptJson(id: 'r-1')])),
    );
    final container = _container(dio);
    addTearDown(container.dispose);
    expect(container.read(receiptListControllerProvider), isA<ReceiptListLoading>());
  });

  test('load 成功 → loaded（items 进态）', () async {
    final (dio, adapter) = receiptRig();
    adapter.onGet(
      '/api/receipts',
      (server) => server.reply(200, receiptListJson([receiptJson(id: 'r-1')])),
    );
    final container = _container(dio);
    addTearDown(container.dispose);
    await container.read(receiptListControllerProvider.notifier).load();
    final state =
        container.read(receiptListControllerProvider) as ReceiptListLoaded;
    expect(state.items.length, 1);
    expect(state.items.first.id, 'r-1');
  });

  test('空列表 → empty 态', () async {
    final (dio, adapter) = receiptRig();
    adapter.onGet(
      '/api/receipts',
      (server) => server.reply(200, receiptListJson(const [])),
    );
    final container = _container(dio);
    addTearDown(container.dispose);
    await container.read(receiptListControllerProvider.notifier).load();
    expect(container.read(receiptListControllerProvider), isA<ReceiptListEmpty>());
  });

  test('无响应 → 「无法连接服务器」（ThrowingAdapter）', () async {
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'))
      ..httpClientAdapter = ThrowingAdapter();
    final container = _container(dio);
    addTearDown(container.dispose);
    await container.read(receiptListControllerProvider.notifier).load();
    final state = container.read(receiptListControllerProvider) as ReceiptListError;
    expect(state.message, '无法连接服务器');
  });

  test('500 → 「加载失败，请重试」', () async {
    final (dio, adapter) = receiptRig();
    adapter.onGet(
      '/api/receipts',
      (server) => server.reply(500, {'code': 'INTERNAL', 'message': 'boom'}),
    );
    final container = _container(dio);
    addTearDown(container.dispose);
    await container.read(receiptListControllerProvider.notifier).load();
    final state = container.read(receiptListControllerProvider) as ReceiptListError;
    expect(state.message, '加载失败，请重试');
  });

  test('flowStatus 过滤参数上链（query 捕获断言）', () async {
    final (dio, adapter) = receiptRig();
    Map<String, String>? captured;
    adapter.onGet(
      '/api/receipts',
      (server) {
        // 0.6.1：请求期拿 RequestOptions 走 replyCallback 的 data 回调（server 本身无 uri）。
        server.replyCallback(200, (options) {
          captured = options.uri.queryParameters;
          return receiptListJson([receiptJson(id: 'r-2')]);
        });
      },
    );
    final container = _container(dio);
    addTearDown(container.dispose);
    await container
        .read(receiptListControllerProvider.notifier)
        .load(flowStatus: FlowStatus.receiving);
    expect(captured?['flowStatus'], 'receiving');
  });

  test('contractId+keyword 双过滤上链', () async {
    final (dio, adapter) = receiptRig();
    Map<String, String>? captured;
    adapter.onGet(
      '/api/receipts',
      (server) {
        server.replyCallback(200, (options) {
          captured = options.uri.queryParameters;
          return receiptListJson([receiptJson(id: 'r-3')]);
        });
      },
    );
    final container = _container(dio);
    addTearDown(container.dispose);
    await container
        .read(receiptListControllerProvider.notifier)
        .load(contractId: 'c-9', keyword: '示例');
    expect(captured?['contractId'], 'c-9');
    expect(captured?['keyword'], '示例');
  });

  test('FlowStatus 中文标签全 8 值（G-12）', () {
    expect(flowStatusLabel(FlowStatus.receiving), '接收登记');
    expect(flowStatusLabel(FlowStatus.taskAssignment), '任务分配');
    expect(flowStatusLabel(FlowStatus.dataEntry), '数据录入');
    expect(flowStatusLabel(FlowStatus.review), '审核');
    expect(flowStatusLabel(FlowStatus.approval), '审批');
    expect(flowStatusLabel(FlowStatus.issuance), '签发');
    expect(flowStatusLabel(FlowStatus.archived), '归档');
    expect(flowStatusLabel(FlowStatus.completed), '完成');
  });
}
