# 更新日志

## v0.2.0 — 2026-10-06

### Added

- M01 认证 Phase 1：原生登录（/api/auth/native-login，无 clientId）、token 安全存储（TokenStore 缝：SecureTokenStore/InMemory；refreshToken 契约可选）、401 会话失效（SessionGuard 缝）、登出（best-effort+清必达，body=accessToken）、登录页（@entry M01.F05.I06）
- 锚 M01.F05.I06/I02/I04 挂 trace；树三 ID 推进开发中

### 依赖

- flutter_secure_storage 11.2.0 / http_mock_adapter 0.6.1（version-lock 钉死）

## v0.1.0 — 2026-10-05

- Phase 0b 骨架：复刻 saas-flutter 配方 + Flutter 3.47.6 壳 + 树镜像（M00/M01/M03 全规划）+ 门禁 L0/L5 绿
