# REQ-2026-011 · M00 租户管理切片（账户会话 + 租户切换器 · lab flutter）

> 功能树：M00 模块行 + M00.F01 + M00.F02 + M00.F02.I01 翻开发中（4 行）。
> 镜像 swift 同源裁剪（2026-10-04 人裁范围 M00/M01/M03）；swift 侧已全数
> 上线（REQ-2026-009 登录落定 / REQ-2026-003 切换器），flutter 补角。

## 1. 需求

- **M00.F01 当前用户会话**：账户页展示当前用户（username/displayName/roleCode）
  + 关联租户列表（name/code）+ 当前选中租户标记；接口 `GET /api/auth/me`。
  会话恢复已有（AuthController restore，M01.F05.I02 一片交付）。
- **M00.F02 登录选租户**：flutter 形态 = 无独立选租户页——登录后按会话
  `currentTenantId` 直进（Authed → ReceiptsListPage，已有行为），当前租户
  以 `/auth/me` 会话为准在账户页呈现（本片 test1 的「当前」标记即证明面）。
- **M00.F02.I01 租户切换器**：账户页非当前租户行「切换」按钮 →
  `POST /api/auth/switch-tenant` body 恰 `{tenantId}` → 响应 LoginResponse
  携新 token 对 → 落 TokenStore（token 换发，保持 Authed 不回登录页）→
  接样列表整表刷新（新 token 即新租户数据域）+ 会话重取 `/auth/me`。

## 2. 契约面（生成物为准）

| 方法 | 端点 | 请求 | 响应 |
|---|---|---|---|
| GET | `/api/auth/me` | — | `CurrentUserSession{user{id,username,displayName,roleCode}, tenants[{tenantId,code,name,roleIds}], currentTenantId}` |
| POST | `/api/auth/switch-tenant` | `SwitchTenantRequest{tenantId}` | `LoginResponse{token, refreshToken, user, tenants}` |

生成物：`AuthApi.authGetCurrentUser / authSwitchTenant`
（`lib/generated/api/auth_api.dart`）。

## 3. 设计

- `AccountPage`（`lib/features/account/`）：inline 状态页（ClientDetailPage
  同款），GET /me 渲染；错误态重试。
- 切换：`AuthController.switchTenant(tenantId) → bool`——成功 save 新
  token 对（LoginResponse.token 为 access；refreshToken 可空直存，与
  login 同纪律），失败 return false 不动 store。
- 整表刷新：AccountPage 成功后 `ref.invalidate(receiptListControllerProvider)`
  + `load()`（autoDispose；ReceiptsListPage 挂着监听，原地更新）。
- 入口：ReceiptsListPage appbar「账户」IconButton。

## 4. 测试计划（test/features/account/account_page_test.dart）

| 测试 | 证明 |
|---|---|
| 账户页：GET /auth/me 会话渲染 + 当前租户标记 | **M00.F01** |
| 切换租户：POST body 恰 tenantId + token 换发 + 列表刷新 | **M00.F02.I01** |
| 切换失败：错误文案 + token 不动 + 不刷新 | 无锚（失败面） |

## 5. 任务

- T1：REQ + 树翻转（4 行）+ red 测试
- T2：AccountPage + switchTenant + 接样页入口
- T3：format → 全量 → trace_cmd → gate → 提交推送

## 6. 影响表

| 文件 | 动作 |
|---|---|
| `lib/features/account/account_page.dart` | 新建 |
| `lib/core/auth/auth_controller.dart` | +switchTenant |
| `lib/features/receipts/receipts_list_page.dart` | appbar +账户入口 |
| `test/features/account/account_page_test.dart` | 新建 3 测 |
