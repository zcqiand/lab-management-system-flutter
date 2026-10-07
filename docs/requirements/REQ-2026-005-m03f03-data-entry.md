# REQ-2026-005 M03.F03 数据录入切片（Flutter web）

| 项 | 值 |
|---|---|
| 提出人 | zcqiand |
| 提出日期 | 2026-10-07 |
| 优先级 | P0 |
| 状态 | 开发中 |
| 关联 ADR | — |
| 上游 | lab-management-system-shared TypeSpec SSOT（API 面只认 dart-dio 生成物）；lab-swift `Sources/CoreKit/DataEntry.swift` + `Sources/App/DataEntryView.swift`（已上线同源裁剪参照）；lab-react `src/features/data-entry/`（满版 12 卡，flutter 裁剪为通用 sheet，不复制卡面）；镜像树 M03.F03 四行 + I12（树行所引即本 REQ 号） |

## 1. 需求描述

**用户裁定**（2026-10-07）：「还有很多规划状态没有上线，请继续，加快进程」——镜像树 M03.F03 数据录入为流程线第三环节（接 M03.F02 提交后的 data_entry 阶段），随后续批推进报告四阶段（REQ-2026-006）。

**我的理解**：镜像树五行：I01 样品+检测数据录入页（data_entry 队列 + 录入 sheet：样品/参数 Picker + 表单，按 `sampleId#parameterCode` 判更新或创建）/ I02 保存检测记录（POST/PUT `/api/test-records`，create-vs-update 按同键记录）/ I03 人工改判 verdict（sheet 内选择器改值随保存请求体提交，不走专用 setVerdict 端点——Q3 裁定，swift/react/vue 家族四仓实证）/ I12 数据录入-提交（act 三动作批量，operator=会话身份）。

- API 只用 shared 生成物 barrel（`lib/generated/lab_shared_generated.dart`），禁手写接口层（suite 硬规则 §4）。
- 通用 sheet 口径（swift 同源裁剪）：样品 Picker（`GET /api/samples?receiptId=`，page:1/pageSize:200）+ 参数 Picker（`GET /api/inspection-parameters` 字典，page:1/pageSize:200）+ result/requirement/standardCode(可选)/verdict(可空)；逐样品拉既有记录（`GET /api/test-records?sampleId=`）建键控索引。react 满版 12 参数卡/跨记录联立**不在本切片**（树行 I01 文本即边界）。
- 基建复用 Phase 1/M03.F01/M03.F02：riverpod Notifier + sealed UiState、dio、DioAdapter mock、TokenStore、401 全局缝、act 三动作形态（F02 同构）；零新依赖。

## 2. 验收标准

| 编号 | 场景（给定） | 操作（当） | 预期（则） |
|---|---|---|---|
| AC-1 | 已登录、mock 后端 | 队列加载 | 列表固定 `flowStatus=data_entry` + keyword；sealed UiState 四态渲染；行点开录入 sheet |
| AC-2 | sheet 装载 | 选样品/参数 | 样品/参数/逐样品记录目录齐；同键已有记录**回填表单**（呈现已录值） |
| AC-3 | 新键保存 | 填 result/requirement → 保存 | POST `/api/test-records` body 字段齐（standardCode 空串归一不传，verdict 随 body）；成功收窗 + SnackBar + 队列 silent 回刷 |
| AC-4 | 同键已存 | 改值/改判再保存 | PUT `/api/test-records/{existingId}`，键不变值全量随 body（verdict 改判同路） |
| AC-5 | 必填缺失 | 空保存 | fail-fast 校验文案上屏，**不发请求**；端点失败留窗保输入可重试 |
| AC-6 | 勾选若干行 | act 提交/退回/撤回 | POST `/api/receipts/data-entry/act` body ids 精确==勾选集、operator==会话 displayName 回退 userId；成功清选择 + silent 刷新；422 → 「当前阶段不可退回」 |
| AC-7 | 全切片完成 | trace_cmd + 门禁 | trace 恰含本切片 4 ID；全门 exit 0 |

## 3. 任务拆解

| 任务 ID | 任务描述 | 类型 | 负责人 | 状态 |
|---|---|---|---|---|
| T1 | REQ-2026-005 + fixture 工厂 + 树 T-0 翻转（5 行 规划→开发中） | 实现 | Claude | 开发中 |
| T2 | 队列 + act 三动作（I01 列表半边 + I12） | 实现 | Claude | 开发中 |
| T3 | 录入 sheet（目录装载 + create-vs-update + verdict，I01 sheet 半边 + I02/I03） | 实现 | Claude | 开发中 |
| T4 | trace/门禁/联调 + GA 翻转 | 实现 | Claude | 开发中 |

## 4. 功能影响（需求与功能对齐的唯一位置）

> ID 均已存在于 `docs/functions/function-tree.md`（Phase 0b 镜像登记，树行已引用本 REQ 号）。状态翻转随实现任务分批走（mirror 免批，reason 带 REQ-2026-005）；GA 翻转（→已上线）归联调人工验收后收尾。

| 功能 ID | 功能名称 | 影响类型 | 说明 | 关联任务 |
|---|---|---|---|---|
| M03.F03 | 数据录入（样品检测数据 + 人工改判） | 变更 | 状态 规划 → 开发中（T1） | T1-T4 |
| M03.F03.I01 | 样品 + 检测数据录入页 | 变更 | 规划 → 开发中（T2/T3） | T2, T3 |
| M03.F03.I02 | 保存检测记录 | 变更 | 规划 → 开发中（T3） | T3 |
| M03.F03.I03 | 人工改判 verdict | 变更 | 规划 → 开发中（T3） | T3 |
| M03.F03.I12 | 数据录入-提交（act 三动作） | 变更 | 规划 → 开发中（T2） | T2 |


## 5. 人工验收记录（GA 前置锚）

- 远门 2026-10-07：133/133 测试 + analyze 0 + suite 门禁全绿 EXIT=0；trace 恰 4 ID
  （I01/I02/I03/I12 各 1，零 inert）。
- **✅ 2026-10-07 人工验收通过**：AC-1~AC-7 全路径过（浏览器 http://localhost:5208
  走数据录入队列/录入 sheet 回填/POST-PUT 保存/act 三动作；环境与分场景实录见
  `ACCEPTANCE-2026-10-07-m03f03-f08.md`，人批同日给出）。环境：lab-nextjs `:5201` +
  lab-flutter `:5208`；凭据 alice/dev123456。GA 翻转 M03.F03 + I01/I02/I03/I12 共 5 行
  随批执行（`tree_change.py --apply` 免批通道，lab M03.F02 先例同构）。
