# flutter-app：flutter 仓判断类规则细则

> 什么时候读我：写 dart 代码 / 配 dart-define / 跑生成器 / 接真后端之前。

## 1. `--dart-define` 取值表（禁兜底，硬规则 §1）

| 场景 | API_BASE_URL | 命令 |
| --- | --- | --- |
| web dev → lab-nextjs | `http://localhost:5201` | `flutter run -d chrome --web-port 5208 --dart-define=API_BASE_URL=http://localhost:5201` |
| web dev → aspnetcore/springboot/fastapi | `http://localhost:5204 / 5205 / 5207` | 同上换值 |
| Android 模拟器 | `http://10.0.2.2:<后端槽位>`（模拟器 localhost 是自己，非宿主） | `flutter run -d emulator... --dart-define=...` |
| **prod（Dockerfile 烘焙）** | `https://lab-nextjs.xiangru.uk` | docker build（`--dart-define` 烘焙，见仓根 Dockerfile） |

- **web dev 端口钉死 5208**（家族扩展段首位，lab.md 值表 + multi-repo-family.md §6）。禁裸 `flutter run -d chrome`（随机端口进不了后端 CORS 白名单——「裸 curl 通、带 Origin 500」指纹）。
- CORS：后端 `LAB_CORS_ALLOWED_ORIGINS` 白名单含 dev origin `http://localhost:5208` 与 prod origin `https://lab-flutter.xiangru.uk`（origin 级追加，deploy 脚本三处：bootstrap/append_if_missing/reconcile 循环）。
- prod 基线已定版（2026-10-11，X08 扩展槽位进 deploy 链，照 saas-flutter 首航先例）：`https://lab-flutter.xiangru.uk`，API_BASE_URL 烘焙 `https://lab-nextjs.xiangru.uk`、SAAS_CLIENT_ID 烘焙 `lab-management`。SAAS_CLIENT_ID 仅 SSO 授权码流消费（REQ-2026-015）；原生登录不经过它。

## 2. Riverpod 分层约定

- `lib/core/`：配置、生成物消费层（dio client 包装生成 API）、共享 provider。
- `lib/features/<模块>/`：ui（widget）/ logic（controller/provider）/ data（生成 API 调用）。
- 页面 widget 类尾部挂 `// @entry Mxx.Fxx.Ixx` 注释（L5 UI 入口锚）；测试回调体首行挂 `// fn: Mxx.Fxx.Ixx`（trace 锚）。锚 ID 必须已登记在功能树。

## 3. 生成物纪律（硬规则 §4）

- `lib/generated/` 禁手改：regen 先删后写，手工补丁必被机械抹掉；改生成结果只能改生成器配置/守卫。
- 依赖对账：生成器临时包 `pubspec.yaml` 的 dependencies 是真源；冲突时以它为准下调本仓 pin，同 commit 改 `pubspec.yaml` + `version-lock.json`。

## 4. pub / gradle 国内镜像（首次装 SDK 配好）

- `PUB_HOSTED_URL=https://pub.flutter-io.cn`、`FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn`（docs.flutter.dev/community/china 官方镜像）。
- Android 首次构建慢属正常；gradle 走阿里云镜像可选配置，Phase 2 真机联调时再配。

## 5. 平台目录生成（一次）

```bash
cd output/<flutter 仓>
flutter create --platforms=android,web --project-name lab_management_system_flutter .
git status   # review：android/ web/ 入库，pubspec 不应被改（被改则人工核对合并）
```
