# REQ-2026-001 原生登录切片（M01 认证 Phase 1：原生通道密码直登闭环）

| 项 | 值 |
|---|---|
| 提出人 | zcqiand |
| 提出日期 | 2026-10-05 |
| 优先级 | P1 |
| 状态 | **开发中**（T7 收口步回填终态与任务表 commit hash） |
| 关联 ADR | —（本仓尚无 ADR） |
| 上游 | lab-management-system-shared TypeSpec SSOT（需求与 API 基线）；已批 spec `xr-code-suite/docs/superpowers/specs/2026-10-05-lab-flutter-phase1-auth-design.md`；lab-react 登录实现为交互参照；lab-swift REQ-2026-003 Q4-C（原生通道人裁）；saas-flutter Phase 1（tag v0.2.0-20261005）为配方参照 |

## 1. 需求描述

**用户原话**：「为 saas 与 lab 两个家族各增加一个 flutter 版本的应用」（家族 spec
`2026-10-04-family-flutter-stacks-design.md`）；本仓 Phase 1 切片 =「M01 认证」，
原生通道 `POST /api/auth/native-login`（家族 spec §7 的 `/auth/login` 系浏览器表单
端点，勘误见已批 spec §1.3，2026-10-05 人裁）。

**理解**：lab-management-system-flutter 首个功能切片。需求面从 lab-management-system-shared
契约取；API 面**只认生成物**（suite 硬规则 §4，`lib/generated/` Phase 0b 已就位，本阶段零
codegen）。交付原生登录闭环：登录页 → native-login 换 JWT → token 安全存储 → dio 拦截器
带 token → 401 清会话回登录页 → 登出（best-effort 通知 + 本地清必达）。全程 mock-friendly
（`flutter test` 无后端全绿），首批功能锚挂上，树推进「开发中」。

### 范围

| 关注点 | 内容 |
|---|---|
| API_BASE_URL 门 | `--dart-define` 必填 fail-fast，Phase 0b 已有零改动；无 clientId 门（native-login 请求体无 clientId 字段） |
| TokenStore 缝 | save/clear/read 抽象；生产绑 secure_storage，测试绑内存 fake |
| AuthController | 登录三分支映射（无 423）+ restore 乐观式 + displayName 空串回退 username |
| dio 装配 | Bearer 注入 + 401 缝（auth 路径排除）+ 原样上抛 |
| 登出 | best-effort authLogout（body=accessToken）+ 本地清必达 + 回 anonymous |
| UI 壳 | LoginPage + main.dart 按 AuthState 条件渲染（不引路由库） |

### 非范围

SSO（I03 → Phase 3）；refresh 流程；/auth/me 与 M00.F01 翻转；租户 UI；423 分支；真后端联调与 CORS（Phase 2）；iOS。

### 澄清记录

| 疑问 | 澄清结论 | 澄清人 | 日期 |
|---|---|---|---|
| Q1 M00.F01 会话恢复是否入 Phase 1 | 不入——乐观式恢复属认证机制内部细节，账户页展示待后续需求 | 人裁 | 2026-10-05 |
| Q2 登录端点 | `/api/auth/native-login`（原生通道）；家族 spec §7 勘误 | 人裁 | 2026-10-05 |
| Q3 与 saas-flutter 关系 | 配方同构、契约面异构，另立 spec，互不阻塞 | 人裁 | 2026-10-05 |

## 2. 验收标准

| 编号 | 场景（给定） | 操作（当） | 预期（则） |
|---|---|---|---|
| AC-1 | mock 环境 | 跑登录分支测试（成功/401/带响应其余/无响应） | 全绿；成功分支 token 落 TokenStore（refreshToken 可空兼容） |
| AC-2 | 已登录，任意受保护请求 | 服务端 401 | TokenStore 清空 + 回 anonymous；auth 端点自身 401 不触发缝（fired==0） |
| AC-3 | 已登录 | 点登出（服务端失败/不可达） | 本地清必达 + 回 anonymous；clear 抛错仍迁移且无 unhandled async error |
| AC-4 | 启动时 store 非空 / 空 / 只剩 refreshToken | restore | 非空→Authed（乐观式，不发校验请求）；空或只剩 refresh→LoginPage |
| AC-5 | Phase 1 测试就位 | `trace_cmd` 产出 trace.json | 恰含 3 ID（I06/I02/I04）；`// @entry M01.F05.I06` 被 L5 source_index 识别；skip 不挂 ID |
| AC-6 | 全仓 | suite 根 `python scripts/gate.py -p lab-management-system-flutter` | L0..L5 全绿幂等；REQ 与首次翻转同 commit |
| AC-7 | 全仓 | docs 收口 | README/PLAN/CHANGELOG 同步（PLAN clientId 措辞修正+状态翻转）；tag `v0.2.0-<YYYYMMDD>` |

## 3. 任务拆解

| 任务 ID | 任务描述 | 类型 | 负责人 | 状态 |
|---|---|---|---|---|
| T1 | 依赖钉死+生成物签名核实 | 基建 | Claude | 完成 |
| T2 | TokenStore 缝（抽象+Secure+内存 fake） | 开发 | Claude | 完成 |
| T3 | SessionGuard/AuthInterceptor/buildDio/providers | 开发 | Claude | 完成 |
| T4 | AuthState+AuthController+REQ 首立+I06 翻转 | 开发 | Claude | 进行中 |
| T5 | 401 缝接线+登出测试+I02/I04 翻转 | 开发 | Claude | 待办 |
| T6 | LoginPage+main.dart 壳+@entry 锚 | 开发 | Claude | 待办 |
| T7 | docs 收口+trace.json+全门绿+终态回填 | 对齐 | Claude | 待办 |

## 4. 功能影响（需求与功能对齐的唯一位置）

| 功能 ID | 功能名称 | 影响类型 | 说明 | 关联任务 |
|---|---|---|---|---|
| M01.F05.I06 | 原生登录 | 变更 | 规划→开发中：登录闭环（AC-1/4） | T4 |
| M01.F05.I02 | Token 注入与失效跳登录 | 变更 | 规划→开发中：401 缝（AC-2） | T5 |
| M01.F05.I04 | 登出 | 变更 | 规划→开发中：登出（AC-3） | T5 |

## 5. 流程影响

无（与 saas-swift 同款，流程账为待人裁遗留项）。

## 6. 风险与回滚

| 风险 | 影响面 | 缓解 | 回滚方式 |
|---|---|---|---|
| Web 端 token 存储实为 localStorage 级 | Web 会话安全 | 与 react 参照同级，诚实记录不夸大；Android 真机 Keystore 级 | — |
| 401 无自动刷新，长会话被踢登录页 | 用户体验 | 契约无 refresh 端点；saas-react 先例同款；Phase 3 SSO 再看 | — |
| Phase 1 整体回归 | 本切片全部 | git revert Phase 1 commit 集；树回退另走 tree_change 提案 | git revert |
