# REQ-2026-002 M03.F01 接收登记全量切片（Flutter web，Phase 2）

| 项 | 值 |
|---|---|
| 提出人 | zcqiand |
| 提出日期 | 2026-10-06 |
| 优先级 | P0 |
| 状态 | 开发中 |
| 关联 ADR | — |
| 上游 | lab-management-system-shared TypeSpec SSOT（API 面只认 dart-dio 生成物）；已批 spec `xr-code-suite/docs/superpowers/specs/2026-10-06-lab-flutter-phase2-m03f01-design.md`（含镜像树勘误）；lab-swift REQ-2026-001/007/008（同切片 iOS 先例）；本仓 Phase 1 REQ-2026-001（基建基线，tag v0.2.0-20261006） |

## 1. 需求描述

**用户裁定**（2026-10-06，切片范围决策）：全 8 活跃 I 含 ext 补录；联调用 nextjs 单后端；单期全量交付（一个 spec + 一个 plan）。

**我的理解**：本仓第二个落地切片 = **M03.F01 接收登记全量** + 详情/历史（M03.F09.I01/I02 双挂）。镜像树口径（勘误后，spec §1.2 的「8 活跃 I」表系误用 shared 接口树形状，见 spec 勘误块）：本切片交付恰 9 个 trace ID——F01.I01 列表 / I02 新建编辑 / I03 删除 / I04 提交 / I06 流程历史 / I07 ext 补录 / I08 act 三动作 + F09.I01 详情页 / I02 时间线（与 F01.I06 同实现双挂）；F09.I03 报告预览不做（留规划）。

- API 只用 shared 生成物 barrel（`lib/generated/lab_shared_generated.dart`），禁手写接口层（suite 硬规则 §4）。
- 基建复用 Phase 1：riverpod Notifier + sealed UiState、dio、DioAdapter mock、TokenStore、401 全局缝；零新依赖。
- 联调 = nextjs 单后端（dev `http://localhost:5201`）；CORS 5 后端仓 dev 白名单追加 `http://localhost:5208`（家族 env 契约，非端点变更）。

## 2. 验收标准

| 编号 | 场景（给定） | 操作（当） | 预期（则） |
|---|---|---|---|
| AC-1 | 已登录、mock 后端 | 列表加载 + 三过滤 + 刷新 | sealed UiState 四态渲染；contractId/flowStatus/keyword 参数正确拼接 |
| AC-2 | 列表有数据 | 点行进详情 | 详情全字段表（缺席字段显示 —）+ 流程历史时间线（按 at 倒序）+ 样品区 |
| AC-3 | 表单必填项齐备 | 提交新建 / 编辑保存 | POST create / PUT PATCH 语义；7 必填 client 校验；submitting 期双提交 no-op（calls==1） |
| AC-4 | 已有接样单 | 删除并确认 | 确认弹窗明示「将同时删除下属样品」；204 → pop 回列表刷新 |
| AC-5 | 详情样品区 | ext 补录四型渲染 + 保存 | text/number/date/select 四型；保存 = 现有 key 全保留 + 非空覆盖 → PUT /api/samples/{id}/ext |
| AC-6 | receiving 阶段单 | act 提交/退回/撤回 | 三动作成功刷新详情；422 → 「当前阶段不可退回」上屏；防抖 |
| AC-7 | 全切片完成 | `python scripts/trace_cmd.py` | trace 恰 9 个 ID；`// @entry M03.F01.I01` 被 L5 识别 |
| AC-8 | 每任务收尾 | suite 根门禁 + 树翻转 | 全门 exit 0；REQ/代码测试/树同 commit；REQ 台账补 REQ-2026-001 行 |
| AC-9 | CORS 5 仓 | dev 白名单追加 5208 | 各仓门禁绿；联调人工验收通过后 GA 翻转 11 行 + tag `v0.3.0-<YYYYMMDD>` |

## 3. 任务拆解

| 任务 ID | 任务描述 | 类型 | 负责人 | 状态 |
|---|---|---|---|---|
| T1-T11 | 见实现计划 `xr-code-suite/docs/superpowers/plans/2026-10-06-lab-flutter-phase2-m03f01.md`（fixture → controller → 列表页 → 详情 → 表单 → 删除 → act → ext → CORS → 收尾 → 联调） | 实现 | Claude | 开发中 |

## 4. 功能影响（需求与功能对齐的唯一位置）

> ID 均已存在于 `docs/functions/function-tree.md`（Phase 0b 镜像登记）。状态翻转随实现任务分批走（mirror 免批，reason 带 REQ-2026-002）；GA 翻转（→已上线）归联调人工验收后收尾。

| 功能 ID | 功能名称 | 影响类型 | 说明 | 关联任务 |
|---|---|---|---|---|
| M03.F01 | 接样管理（CRUD + 三态过滤） | 变更 | 状态 规划 → 开发中（T3 随 I01 首翻） | T1-T8 |
| M03.F01.I01 | 接样单列表（三态过滤） | 变更 | 规划 → 开发中（T3） | T1-T3 |
| M03.F01.I02 | 新建/编辑接样单 | 变更 | 规划 → 开发中（T5） | T5 |
| M03.F01.I03 | 删除接样单 | 变更 | 规划 → 开发中（T6） | T6 |
| M03.F01.I04 | 提交接样单（receiving → task_assignment） | 变更 | 规划 → 开发中（T7） | T7 |
| M03.F01.I06 | 接样单流程历史 | 变更 | 规划 → 开发中（T4，与 F09.I02 双挂） | T4 |
| M03.F01.I07 | 接样单 ext 字段补录 | 变更 | 规划 → 开发中（T8；swift REQ-2026-008 同构） | T8 |
| M03.F01.I08 | 接样-提交（act 三动作） | 变更 | 规划 → 开发中（T7） | T7 |
| M03.F09 | 接样单详情（接样+样品+检测数据+预览） | 变更 | 规划 → 开发中（T4 随 F09.I01 首翻） | T4 |
| M03.F09.I01 | 接样单详情页（接样信息全字段） | 变更 | 规划 → 开发中（T4） | T4 |
| M03.F09.I02 | 流程历史时间线（按 at 倒序） | 变更 | 规划 → 开发中（T4，与 F01.I06 同实现双挂） | T4 |

M03.F09.I03 报告预览：本切片不做，维持规划。

## 5. 流程影响

本仓 `docs/design/flow-function-map.md` 无既有流程步骤引用；无影响。

## 6. 风险与回滚

| 风险 | 影响面 | 缓解 | 回滚方式 |
|---|---|---|---|
| built_value 必填面大，mock fixture 重 | T1 | 共享 fixture 工厂 8 件一次核清（plan T1） | 修 fixture 工厂单点 |
| FlowAction.return_ 尾下划线笔误 | T7 | wire 名解码冒烟在 T1 证 | 编译红即修 |
| ext 定义真源误接（extFields 在 InspectionReportName，不在 receipt/sample） | T8 | 已核实 `reportNamesListReportNames` 路径 + swift REQ-2026-008 同构 | 改 provider 单点 |
| CORS 漏仓致联调 500（CORS origin not allowed 表现为 500 指纹） | T9 | 5 仓逐一追加 + 各仓门禁 | 补 env 一行 |
