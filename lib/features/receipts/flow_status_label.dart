import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

/// FlowStatus → 中文标签（G-12 全 8 值，漏一值测试即红）。
String flowStatusLabel(FlowStatus status) {
  return switch (status) {
    FlowStatus.receiving => '接收登记',
    FlowStatus.taskAssignment => '任务分配',
    FlowStatus.dataEntry => '数据录入',
    FlowStatus.review => '审核',
    FlowStatus.approval => '审批',
    FlowStatus.issuance => '签发',
    FlowStatus.archived => '归档',
    FlowStatus.completed => '完成',
    // EnumClass 非 sealed，编译器不认穷举：漏一值时测试先红，此处兜不住的
    // 未知枚举值 fail-fast（禁静默回退，suite-hard-rules §1 同纪律）。
    _ => throw ArgumentError('未知 FlowStatus: ${status.name}'),
  };
}
