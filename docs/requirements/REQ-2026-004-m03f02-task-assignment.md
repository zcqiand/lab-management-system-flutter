# REQ-2026-004 M03.F02 任务分配切片（Flutter web）

| 项 | 值 |
|---|---|
| 提出人 | zcqiand |
| 提出日期 | 2026-10-06 |
| 优先级 | P0 |
| 状态 | 开发中 |
| 关联 ADR | — |
| 上游 | lab-management-system-shared TypeSpec SSOT（API 面只认 dart-dio 生成物）；lab-react `src/features/task-assignment/TaskAssignmentList.tsx`（已上线参照实现）；镜像树 `docs/functions/function-tree.md` M03.F02 三行（本 REQ 即树行所引 REQ-2026-004）；实现计划 `xr-code-suite/docs/superpowers/plans/2026-10-06-lab-flutter-m03f02-task-assignment.md` |

## 1. 需求描述

**用户裁定**（2026-10-06）：M03.F02 lab-flutter 切片执行（池项立项）。

**我的理解**：本仓第三个落地切片 = **M03.F02 任务分配**（流程线第二环节，接 M03.F01 提交后的 task_assignment 阶段）。镜像树三行：I01 任务分配队列（列表 flowStatus=taskAssignment 过滤 + keyword + 多选）/ I02 安排检测人员与计划日期（弹窗两字段，assigneeId 不传）/ I05 任务分配-提交（act 三动作批量）。

- API 只用 shared 生成物 barrel（`lib/generated/lab_shared_generated.dart`），禁手写接口层（suite 硬规则 §4）。
- 基建复用 Phase 1/M03.F01：riverpod Notifier + sealed UiState、dio、DioAdapter mock、TokenStore、401 全局缝；零新依赖。
- 后端 assign 语义（lab-fastapi impl 实证）：三字段 None-跳过 patch；RECEIVING 阶段经 assign 直写推进 task_assignment。**取消分配（清空）无端点语义**——家族 react I03 同为规划态，本切片 I02 只交付安排/重安排。

## 2. 验收标准

| 编号 | 场景（给定） | 操作（当） | 预期（则） |
|---|---|---|---|
| AC-1 | 已登录、mock 后端 | 队列加载 | 列表固定 `flowStatus=taskAssignment` + keyword 参数正确拼接；sealed UiState 四态渲染 |
| AC-2 | 队列有数据 | 勾选行 → 安排弹窗 | 弹窗预填当前值；保存 PUT /api/receipts/{id}/task body 携带 assigneeName/plannedTestDate 且 **assigneeId 为 null**；saving 期双提交 no-op（calls==1） |
| AC-3 | 已安排单 | 再次安排 | 新值覆盖旧值（后端 patch 语义），弹窗预填 |
| AC-4 | 勾选若干行 | act 提交/退回/撤回 | POST /api/receipts/assigning/act body ids 精确==勾选集、operator==会话 displayName（空串回退 username）；成功后清选择 + silent 刷新；422 → 「当前阶段不可退回」上屏 |
| AC-5 | 全切片完成 | `python scripts/trace_cmd.py` | trace 恰 15 个 ID（12+3）；`// @entry M03.F02.I01` 被 L5 识别 |
| AC-6 | 每任务收尾 | suite 根门禁 + 树翻转 | 全门 exit 0；REQ/代码测试/树同 commit |

## 3. 任务拆解

| 任务 ID | 任务描述 | 类型 | 负责人 | 状态 |
|---|---|---|---|---|
| T1-T6 | 见实现计划（fixture → 队列页 → 安排弹窗 → act → trace/门禁 → 联调+GA） | 实现 | Claude | 开发中 |

## 4. 功能影响（需求与功能对齐的唯一位置）

> ID 均已存在于 `docs/functions/function-tree.md`（Phase 0b 镜像登记，树行已引用本 REQ 号）。状态翻转随实现任务分批走（mirror 免批，reason 带 REQ-2026-004）；GA 翻转（→已上线）归联调人工验收后收尾。

| 功能 ID | 功能名称 | 影响类型 | 说明 | 关联任务 |
|---|---|---|---|---|
| M03.F02 | 任务分配（安排检测人员/计划日期） | 变更 | 状态 规划 → 开发中（T2 随 I01 首翻） | T1-T6 |
| M03.F02.I01 | 任务分配队列 | 变更 | 规划 → 开发中（T2） | T2 |
| M03.F02.I02 | 安排/取消检测人员与计划日期 | 变更 | 规划 → 开发中（T3）；行文本随交付勘误：本切片交付安排/重安排，取消分配家族规划中（react I03 同态，无端点语义） | T3 |
| M03.F02.I05 | 任务分配-提交（act 三动作） | 变更 | 规划 → 开发中（T4） | T4 |
