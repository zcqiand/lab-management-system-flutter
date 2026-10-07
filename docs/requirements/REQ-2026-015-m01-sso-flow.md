# REQ-2026-015 · M01.F05.I03 SSO OAuth 2.0 授权码流（flutter 形态）

> 功能树：M01 模块行 + M01.F05 + M01.F05.I03 翻开发中（3 行）。
> 镜像 swift 同名行（REQ-2026-010 已上线）——语义同源（RFC 6749 §4.1 两阶段），
> 形态按 flutter web 落：浏览器整页重定向（react LoginPage 同款），无
> ASWebAuthenticationSession 对应物。

## 1. 需求

- **发起（阶段 1）**：登录页「SSO 登录」按钮 → `GET /api/auth/sso/authorize`
  （response_type=code + client_id + redirect_uri + state 防 CSRF）→
  `SsoRedirect{authorizeUrl, state}` → 整页跳 IdP（saas）。
  state 32 字节密码学随机 → base64url 无填充（43 字符），一次性。
- **回跳（阶段 2）**：IdP 认证后重定向回 `redirect_uri` 携 `?code=&state=`
  → 应用启动在登录页分流检测 → 验 state（与发起落账值比对，不匹配**绝不**
  打 exchange）→ `POST /api/auth/sso/callback`（grant_type=authorization_code
  四字段）换 lab 自家 JWT → token 对落 store（Authed 直进业务页）。
- **fail-fast（AC-3，ADR-0019）**：client_id 经 `--dart-define=SAAS_CLIENT_ID`
  注入，缺失在点按时报配置缺失文案（swift AC-3 同款 UX，不破坏既有 dev 启动；
  `String.fromEnvironment` 缺失返空串与「显式设空」不可区分，故取点按拦截）。
- **一次性**：回跳无论成败，state 账目即清（防重放；react 同款）。

## 2. 契约面（生成物为准）

| 方法 | 端点 | 请求 | 响应 |
|---|---|---|---|
| GET | `/api/auth/sso/authorize` | query: `response_type=code, client_id, redirect_uri, state` | `SsoRedirect{authorizeUrl, state}` |
| POST | `/api/auth/sso/callback` | `SsoCallbackRequest{grant_type=authorization_code, code, redirect_uri, state}` | `LoginResponse{token, refreshToken, user, tenants}` |

生成物：`AuthApi.authSsoAuthorize / authSsoCallback`
（`lib/generated/api/auth_api.dart`）；`OAuthResponseType.code` /
`OAuthGrantType.authorizationCode`。

## 3. 设计

- `SsoFlow`（`lib/core/auth/sso_flow.dart`）：state 生成/回跳解析为纯函数；
  网络与浏览器跳转走缝注入（authorize/exchange 打生成物 AuthApi，navigate
  web=dart:js_interop `location.assign`，测试=stub）。swift SsoViewModel
  三缝同构。
- `SsoStateStore`（state+redirectUri 对落账，防 CSRF 凭据跨整页跳转存活）：
  生产 flutter_secure_storage（键 `lab.sso.state` / `lab.sso.redirectUri`，
  web=localStorage 级，与 react sessionStorage 参照同级），测试=内存 fake。
- redirect_uri：`SsoFlow.webRedirectUri(Uri.base)` = lab 自己绝对地址裸根
  `/`（RFC 6749 §3.1.2 与 saas 白名单精确匹配，不带 query；react
  `${origin}/login` 同款，flutter web 入口为 `/`）。
- `AuthController.adoptSsoLogin(LoginResponse)`：login() 尾段同构收口
  （token 非空校验 → save → Authed，displayName 回退链 RF#1 一处解析）。
- 回跳分流在登录页 initState（react LoginPage 同款，main.dart 门不改）：
  `Uri.base` 携 code+state → 自动走 handleCallback；错误态文案 + 重发起
  （按钮仍在）。
- saas 侧 oauth_client 白名单注册 `http://localhost:5208/`（redirect 白名单
  数据变更，跨仓协调人裁——REQ-2026-010 Q2 同款非范围项）。

## 4. 测试计划（test/core/auth/sso_flow_test.dart）

| 测试 | 证明 |
|---|---|
| generateState：base64url 无填充 43 字符 + 防重放 | 纯函数面 |
| parseCallback：缺 code/state 不收 | 纯函数面 |
| 发起：authorize 四查询参 + 落账 + 跳 IdP | **M01.F05.I03** |
| 发起：配置缺失 fail-fast 不打 authorize（AC-3） | 无锚 |
| 回跳：state 不匹配拒换 + 不打 exchange（AC-2） | 无锚 |
| 回跳：callback 四字段换发 + 落账 adopt（AC-1） | 无锚 |
| 回跳：换发失败文案 + token 不动可重试（AC-4） | 无锚 |
| 登录页：「SSO 登录」按钮入口 | 无锚（组件面） |
| 登录页：点 SSO 按钮走发起缝跳 IdP | 无锚（组件面） |
| 登录页：回跳落地自动换发进 Authed | 无锚（端到端） |

## 5. 任务

- T1：REQ + 树翻转（3 行）+ red 测试
- T2：SsoFlow + SsoStateStore + adoptSsoLogin + 登录页接线
- T3：format → 全量 → trace_cmd → gate → 提交推送

## 6. 影响表

| 文件 | 动作 |
|---|---|
| `lib/core/auth/sso_flow.dart` | 新建 |
| `lib/core/auth/sso_state_store.dart` | 新建 |
| `lib/core/auth/sso_redirect*.dart` | 新建（web 跳转缝） |
| `lib/core/auth/auth_controller.dart` | +adoptSsoLogin |
| `lib/core/auth/login_page.dart` | +SSO 按钮 + 回跳分流 |
| `lib/core/config/app_config.dart` | +saasClientId |
| `lib/core/auth/providers.dart` | +ssoStateStore/ssoFlow provider |
| `test/core/auth/sso_flow_test.dart` | 新建 10 测 |
| `test/fakes/in_memory_sso_state_store.dart` | 新建 |
