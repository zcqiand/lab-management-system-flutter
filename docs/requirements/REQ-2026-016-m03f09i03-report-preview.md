# REQ-2026-016 · M03.F09.I03 报告预览（数据面摘要 · lab flutter）

> 功能树：M03.F09.I03 翻开发中（1 行；M03 模块行 + M03.F09 父行已上线）。
> 镜像 swift 同名行（REQ-2026-007 已上线，ReportPreviewViewModel +
> ReportPreviewSheet）；数据面预览为用户裁定 Q1（2026-09-29）：纯数据摘要，
> docx 模板填充/打印/套打为家族 Web 专属，非范围。

## 1. 需求

- **逐样品归集**：详情页「报告预览」入口 → `GET /api/samples?receiptId`
  （页大小 200 镜像家族）单次取样 → 逐样品 `GET /api/test-records?sampleId`
  归集（契约 list 端点只支持 sampleId 过滤——家族
  ReportPreviewModal.recordsOfSamples 同款策略）。任何失败清空整体进错误态，
  不留半写状态。
- **报告式摘要**：按样品分组 section（样品 {sampleCode}），记录行 =
  parameterCode + 「结果 {result} · 要求 {requirement}」+ 判定
  verdict（空显 —）；样品无记录显「该样品暂无检测记录」。
- **补录门（M03.F01.I07 预览前门，家族 needExt 同语义）**：预览装载后按
  categoryCode 取 reportNames extFields 定义（source=receipt 滤掉），首样品
  ext 缺 key（值空也算缺）→ 先出补录入口不渲染预览列表；保存成功回来自动
  重载预览。首样品缺失（无样品）不开门。

## 2. 契约面（生成物为准）

| 方法 | 端点 | 请求 | 响应 |
|---|---|---|---|
| GET | `/api/samples` | query: `receiptId`（page/pageSize） | `Sample[]` |
| GET | `/api/test-records` | query: `sampleId`（page/pageSize） | `TestRecord[]` |
| GET | `/api/report-names` | page/pageSize | `InspectionReportName[]`（extFields 门定义真源） |

生成物：`SamplesApi.samplesListSamples / TestRecordsApi.testRecordsListTestRecords /
ReportNamesApi.reportNamesListReportNames`。

## 3. 设计

- `ReportPreviewController`（autoDispose Notifier，`lib/features/receipts/`）：
  sealed 三态 Loading/Ready/Error；load(receiptId, categoryCode) 逐样品归集 +
  门字段计算（formFields = usable where ext 值空）一气呵成，任何 await 失败
  → Error 清整体（swift 同款不留半写）；ref.mounted 纪律。
- `ReportPreviewPage`：Loading 生成预览中 / Error 预览失败 + 重试 /
  Ready 分流（空样品 → 暂无样品；门字段非空 → 补录入口（推 SampleExtPage
  复用已上线补录页，返回即重载）；否则预览列表）。
- 入口：详情页 appbar「报告预览」IconButton（Ready 态才可点）。

## 4. 测试计划（test/features/receipts/report_preview_test.dart）

| 测试 | 证明 |
|---|---|
| 装载：逐样品归集 + 记录按样品分组 | **M03.F09.I03** |
| 门判定：缺 key 出补录字段（receipt 源滤掉） | 无锚（I07 门语义复用） |
| 装载失败：整体清空进错误态（不留半写） | 无锚（失败面） |
| 预览页：按样品分组渲染判定与结果 | 无锚（组件面） |
| 补录门：缺 key 先出补录不渲染预览 | 无锚（组件面） |
| 错误态可重试 | 无锚（组件面） |

纯流测试用普通 `test()`（REQ-2026-015 实证：testWidgets FakeAsync 区直
await dio 挂死）；组件面仍 testWidgets + pumpAndSettle。

## 5. 任务

- T1：REQ + 树翻转（1 行）+ red 测试
- T2：ReportPreviewController + ReportPreviewPage + 详情页入口
- T3：format → 全量 → trace_cmd → gate → 提交推送

## 6. 影响表

| 文件 | 动作 |
|---|---|
| `lib/features/receipts/report_preview_controller.dart` | 新建 |
| `lib/features/receipts/report_preview_page.dart` | 新建 |
| `lib/features/receipts/receipt_detail_page.dart` | appbar +报告预览入口 |
| `test/features/receipts/report_preview_test.dart` | 新建 6 测 |
