# wechat-acp

> WeChat ↔ ACP 兼容 AI Agent 的桥接器 —— 微信里跟 Claude / Copilot / Gemini 等 AI 聊天。

```
        微信用户                               ACP Agent (子进程)
   ┌────────────────┐           ┌──────────────────────────────────┐
   │ 发送文字/图片/文件 │          │  Claude Code / Copilot / Gemini  │
   │ 接收 AI 回复     │          │  Qwen / Codex / OpenCode / Kiro  │
   │ 斜杠命令控制会话  │          │  Hermes / Kimi / Pi / 自定义    │
   └──────┬─────────┘          └────────────▲──────────────────────┘
          │                                 │
          │    ┌─────────────────────┐      │
          │    │    wechat-acp       │      │
          ├───→│  桥接引擎（Node.js）  ├──────┘
          │    │                     │
          │    │  ┌─ 微信 iLink 登录 ─┐│
          │    │  │ 终端 QR 码渲染    ││
          │    │  └──────────────────┘│
          │    │                      │
          │    │  ┌─ 消息轮询 ───────┐│
          │    │  │ 1:1 私信        ││
          │    │  │ 逐用户串行处理   ││
          │    │  └──────────────────┘│
          │    │                      │
          │    │  ┌─ ACP 协议转发 ───┐│
          │    │  │ stdio 全双工     ││
          │    │  │ 自动允许权限     ││
          │    │  └──────────────────┘│
          │    │                      │
          │    │  ┌─ 文件接收 ───────┐│
          │    │  │ 下载 + 解密     ││
          │    │  │ 存盘供 Agent 读取││
          │    │  └──────────────────┘│
          │    └─────────────────────┘      ┌──────────────────┐
          │                                 │  本地注入        │
          │    ┌─────────────────────┐      │  cron/launchd    │
          └───→│  ~/.wechat-acp/    │      │  inject 命令     │
               │  持久化存储         │◄─────┤  文件队列         │
               │  登录令牌 / PID     │      └──────────────────┘
               │  会话状态           │
               └─────────────────────┘
```

## 属性

| 项目 | 值 |
|------|-----|
| **作者** | [Jun Han (formulahendry)](https://github.com/formulahendry) |
| **协议** | MIT |
| **语言** | TypeScript (88%) + JavaScript (12%) |
| **Stars** | ⭐ 668 (2026-06) |
| **发布时间** | 2026-03-23 |
| **npm** | [wechat-acp](https://www.npmjs.com/package/wechat-acp) |
| **最新更新** | 2026-06-01 |

## 核心能力

| 能力 | 说明 |
|------|------|
| **微信 iLink 登录** | 终端渲染 QR 码，扫码即登，令牌持久化 |
| **ACP 协议桥接** | 通过 stdio 子进程与任何 ACP 兼容 Agent 全双工通信 |
| **11+ 内置预设** | Claude / Copilot / Gemini / Qwen / Codex / OpenCode / OpenClaw / Kiro / Hermes / Kimi / Pi，还支持自定义命令 |
| **多实例隔离** | `--instance <name>` 可并行运行多个 WeChat 账号绑定不同项目 |
| **文件接收** | 自动下载解密 WeChat 文件并保存到本地，Agent 可直接读取 |
| **斜杠命令系统** | `/acp-cancel` 取消当前轮、`/acp-config` 动态调参、`/acp-prompt-start/done` 多消息缓冲合并发送 |
| **命令别名** | 可自定义斜杠命令名称，避免与底层 Agent 内置命令冲突，支持语音输入短语匹配 |
| **本地注入** | 通过 `wechat-acp inject` 从 cron/launchd 注入消息，支持文件队列 |
| **守护进程模式** | `--daemon` 后台运行，自动处理消息 |
| **会话管理** | 每用户独立 ACP 会话，串行处理，空闲自动清理 |

## 适用场景

1. **微信里的 AI 编码助手**：微信发消息给 Claude Code / Copilot，在手机上调代码
2. **团队 AI Bot**：多人共享一个 WeChat 账号，每人独立 Agent 会话
3. **多账号多项目**：用多个微信账号同时对接不同项目，通过 instance 隔离
4. **自动化工作流**：cron 定时注入"今日 AI 资讯"，Agent 回复后推回微信
5. **Agent 测试平台**：在微信里对比不同 Agent（Claude vs Qwen vs Copilot）的回复质量

## 亮点

- **formulahendry** 出品 — 也是 VS Code 扩展 **Auto Close Tag** / **Auto Rename Tag** / **Azure Tools** 的作者（总安装量超 5000 万），质量有保障
- **零配置开箱**：`npx -y wechat-acp@latest --agent copilot` 一行命令跑起来
- **内置 11+ 预设**，覆盖主流 Agent CLI
- 持续活跃开发，发布仅 2 个月已 668 Stars、78 Forks
- npm 同步发布 `@next` 预览构建

## 原文链接

- GitHub: <https://github.com/formulahendry/wechat-acp>
- npm: <https://www.npmjs.com/package/wechat-acp>
