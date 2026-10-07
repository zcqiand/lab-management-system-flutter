# REQ-2026-006 M03.F05-F08 报告四阶段切片（Flutter web）

| 项 | 值 |
|---|---|
| 提出人 | zcqiand |
| 提出日期 | 2026-10-07 |
| 优先级 | P0 |
| 状态 | 开发中 |
| 关联 ADR | — |
| 上游 | lab-management-system-shared TypeSpec SSOT（API 面只认 dart-dio 生成物）；lab-swift 报告四阶段同源裁剪参照；镜像树 M03.F05/F06/F07/F08 共 16 行（树行所引即本 REQ 号） |

## 1. 需求描述

**用户裁定**（2026-10-07）：「还有很多规划状态没有上线，请继续，加快进程」——REQ-2026-005 数据录入落地后，推进报告四阶段（审核/批准/发放/归档），流程线第四至七环节。

**我的理解**：镜像树 16 行 = 每阶段三件：I01 阶段队列（`GET /receipts` 固定 flowStatus + keyword）/ I02 act 按钮（选中行 submit + return）/ I05·I07 act 三动作端点（`POST /receipts/{review|approve|issuance|archived}/act`，body.action={submit、return、withdraw}，operator=会话身份；旧 I06 退回/I07 撤回废弃语义并入，号不回收）。

- API 只用 shared 生成物 barrel（`lib/generated/lab_shared_generated.dart`），禁手写接口层（suite 硬规则 §4）。四端点生成物已核：`receiptsActFlowReview/Approve/Issuance/Archived` 均 `({required FlowActionRequest}) → Response<BuiltList<FlowActionResult>>`，路径 `/api/receipts/{review|approve|issuance|archived}/act`。
- 四阶段同构（F03 DataEntryQueue 同款克隆）：**一个通用控制器 + 一个通用页面**，按 `FlowStatus` family 参数化（riverpod 3 family Notifier，F03 sheet 已验形）；页标题/按钮文案按阶段查表。行上呈现 `reportCode`（非空即显，F07.I02 呈现点）。
- act 三按钮口径（裁定）：I05/I07 行明文「act 三动作」+ 旧 I06 退回/I07 撤回语义并入 → 每阶段按钮 = submit / return / withdraw 三钮（F02/F03 同构）；I02 行文案只点名 submit/return 不排斥第三钮。
- 基建复用 M03.F02/F03：riverpod Notifier + sealed UiState、dio、DioAdapter mock、401 全局缝、operator 解析链、422 专文案；零新依赖。

## 2. 验收标准

| 编号 | 场景（给定） | 操作（当） | 预期（则） |
|---|---|---|---|
| AC-1 | 已登录、mock 后端 | 打开任一阶段队列 | 列表固定 `flowStatus=<阶段>` + keyword；sealed UiState 渲染；标题按阶段（报告审核/批准/发放/归档） |
| AC-2 | 勾选若干行 | 点 submit/return/withdraw | POST 到本阶段 `/act` 端点，body ids 精确==勾选集、operator==会话 displayName 回退 userId；成功清选择 + silent 回刷 |
| AC-3 | 行 reportCode 非空 | 队列渲染 | 行上呈现报告编号（F07.I02） |
| AC-4 | act 422（退回无前置） | 点 return | 「当前阶段不可退回」上屏，列表与选择不动 |
| AC-5 | 零勾选/acting/无身份 | act 按钮 | 全禁（onPressed==null），不发网络；acting 期再调 no-op |
| AC-6 | 接样列表 appbar | 点阶段入口 | 四入口入栈对应阶段队列页 |
| AC-7 | 全切片完成 | trace_cmd + 门禁 | trace 恰含本切片 12 ID；全门 exit 0 |

## 3. 任务拆解

| 任务 ID | 任务描述 | 类型 | 负责人 | 状态 |
|---|---|---|---|---|
| T1 | REQ-2026-006 + 树 T-0 翻转（16 行 规划→开发中）+ 测试先行（red） | 实现 | Claude | 开发中 |
| T2 | 通用阶段队列控制器 + 页面 + 列表页四入口（I01×4 + I02×4 + I05/I07×4） | 实现 | Claude | 开发中 |
| T3 | reportCode 行呈现收口 + trace 锚补全 | 实现 | Claude | 开发中 |
| T4 | trace/门禁/联调 + GA 翻转 | 实现 | Claude | 开发中 |

## 4. 功能影响（需求与功能对齐的唯一位置）

> ID 均已存在于 `docs/functions/function-tree.md`（Phase 0b 镜像登记，树行已引用本 REQ 号）。状态翻转随实现任务分批走（mirror 免批，reason 带 REQ-2026-006）；GA 翻转（→已上线）归联调人工验收后收尾。

| 功能 ID | 功能名称 | 影响类型 | 说明 | 关联任务 |
|---|---|---|---|---|
| M03.F05 | 报告审核流程 | 变更 | 状态 规划 → 开发中（T1） | T1-T4 |
| M03.F05.I01 | 审核队列（review 阶段） | 变更 | 规划 → 开发中（T2） | T2 |
| M03.F05.I02 | 审核通过/驳回 | 变更 | 规划 → 开发中（T2） | T2 |
| M03.F05.I07 | 报告审核-提交（act 三动作） | 变更 | 规划 → 开发中（T2） | T2 |
| M03.F06 | 报告批准流程 | 变更 | 状态 规划 → 开发中（T1） | T1-T4 |
| M03.F06.I01 | 批准队列（approval 阶段） | 变更 | 规划 → 开发中（T2） | T2 |
| M03.F06.I02 | 批准/驳回 | 变更 | 规划 → 开发中（T2） | T2 |
| M03.F06.I05 | 报告批准-提交（act 三动作） | 变更 | 规划 → 开发中（T2） | T2 |
| M03.F07 | 报告发放流程 | 变更 | 状态 规划 → 开发中（T1） | T1-T4 |
| M03.F07.I01 | 发放队列（issuance 阶段） | 变更 | 规划 → 开发中（T2） | T2 |
| M03.F07.I02 | 发放（生成报告编号） | 变更 | 规划 → 开发中（T2/T3） | T2, T3 |
| M03.F07.I05 | 报告发放-提交（act 三动作） | 变更 | 规划 → 开发中（T2） | T2 |
| M03.F08 | 报告归档流程 | 变更 | 状态 规划 → 开发中（T1） | T1-T4 |
| M03.F08.I01 | 归档队列（archived 阶段） | 变更 | 规划 → 开发中（T2） | T2 |
| M03.F08.I02 | 归档完成 | 变更 | 规划 → 开发中（T2） | T2 |
| M03.F08.I05 | 报告归档-提交（act 三动作） | 变更 | 规划 → 开发中（T2） | T2 |
