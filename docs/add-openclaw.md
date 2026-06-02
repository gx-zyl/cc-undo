# OpenClaw — Personal AI Assistant

> 你自己的个人 AI 助手。任何 OS，任何平台。🦞

---

## 🦞 龙虾说

```
          ╭─────────────────────────────────────╮
          │                                     │
          │    "EXFOLIATE! EXFOLIATE!"          │
          │                                     │
          │    一只龙虾游进了你的终端，            │
          │    在你的 WhatsApp / Telegram /       │
          │    Discord / 微信 / QQ 上都安了家。   │
          │                                     │
          │    🦞 "我不是 SaaS，我是你的守虾人。"  │
          │                                     │
          ╰─────────────────────────────────────╯
```

---

## 架构链路

```
                    ╭──────────────────────────────────────╮
                    │         🦞  OpenClaw                 │
                    │     Personal AI Assistant              │
                    │     本地优先 · 多通道 · 自托管        │
                    ╰──────────────────────────────────────╯

                          ▼
┌──────────────────────────────────────────────────────────┐
│             消息通道（20+ 平台）                           │
│                                                          │
│  WhatsApp  Telegram  Discord  Slack   Signal  iMessage   │
│  IRC  MS Teams  Matrix  Feishu  LINE  Mattermost         │
│  Nostr  Synology  Twitch  Zalo  微信  QQ  WebChat        │
│                                                          │
│  macOS 菜单栏  │  iOS App  │  Android App                 │
└──────────────────────────┬───────────────────────────────┘
                           │
                           ▼
┌──────────────────────────────────────────────────────────┐
│                    Gateway（控制面）                       │
│                                                          │
│  会话管理   消息路由   认证安全   日志追踪   健康检查      │
│  配置文件  allowlist   DM Policy  Webhook  Cron Job      │
└──────────────────────────┬───────────────────────────────┘
                           │
           ┌───────────────┼───────────────┐
           ▼               ▼               ▼
┌──────────────────┐ ┌────────────┐ ┌────────────────────┐
│  Multi-Agent     │ │   Skills   │ │      Tools         │
│  路由 & 沙箱     │ │  ────────  │ │  ─────────         │
│                  │ │  ClawHub   │ │  Browser · Canvas   │
│  · 工作区隔离    │ │  内置技能   │ │  Nodes · Sessions  │
│  · 按通道路由    │ │  自定义     │ │  Cron · Discord   │
│  · Docker沙箱    │ │            │ │  Gateway Admin     │
│  · OpenShell     │ │            │ │                    │
└──────────────────┘ └────────────┘ └────────────────────┘
           │               │               │
           └───────────────┼───────────────┘
                           ▼
┌──────────────────────────────────────────────────────────┐
│               AI Models（多供应商）                        │
│                                                          │
│  OpenAI / Anthropic / Google / 本地模型 / ...            │
│  文本生成 · 语音对话 · 思考推理 · 模型故障转移            │
└──────────────────────────────────────────────────────────┘
```

---

## 消息流（发送→处理→回复）

```
  用户消息
     │
     ▼
┌────────────┐     ┌──────────┐     ┌───────────┐
│  通道适配器  │────▶  Gateway  │────▶  会话路由   │
│ (WhatsApp等) │     │  (控制面) │     │  (Agent)   │
└────────────┘     └──────────┘     └─────┬─────┘
                                          │
         ┌────────────────────────────────┼────────────┐
         ▼                                ▼            ▼
   ┌──────────┐                    ┌────────────┐ ┌───────┐
   │  调用工具  │                    │ 执行 Skill  │ │ 思考   │
   │  Browser  │                    │ (自定义)    │ │ 推理   │
   │  Canvas   │                    └────────────┘ └───────┘
   │  System   │
   └─────┬────┘
         │
         ▼
   ┌──────────┐     ┌──────────┐     ┌───────────┐
   │  模型生成  │────▶  Gateway  │────▶  通道回复   │───▶ 用户
   │  响应     │     │  格式化   │     │           │
   └──────────┘     └──────────┘     └───────────┘
```

---

## 属性

| 项目 | 值 |
|------|-----|
| **作者** | OpenClaw 社区 [@openclaw](https://github.com/openclaw) |
| **协议** | MIT |
| **语言** | TypeScript |
| **⭐ Stars** | 376,131 |
| **🍴 Forks** | 78,562 |
| **🐛 Issues** | 7,075 开放 |
| **📅 创建** | 2025-11-24 |
| **🏠 官网** | [openclaw.ai](https://openclaw.ai) |
| **📖 文档** | [docs.openclaw.ai](https://docs.openclaw.ai) |
| **💬 Discord** | [discord.gg/clawd](https://discord.gg/clawd) |
| **赞助商** | OpenAI · GitHub · NVIDIA · Vercel · Blacksmith · Convex |

---

## 核心能力

| 能力 | 说明 |
|------|------|
| **多通道收件箱** | 20+ 消息平台统一接入，含微信/QQ |
| **本地优先网关** | 控制面跑在自己设备上，数据自控 |
| **多 Agent 路由** | 按通道/账号/联系人路由到不同 Agent |
| **语音交互** | macOS 语音唤醒 + iOS/Android 连续语音对话 |
| **Live Canvas** | Agent 驱动的可视化工作区（A2UI） |
| **工具系统** | 浏览器、Canvas、Cron、Sessions 等一等工具 |
| **Skill 生态** | ClawHub 技能市场，可安装/自写 |
| **沙箱安全** | Docker/SSH/OpenShell 沙箱隔离非主会话 |
| **Companion App** | macOS 菜单栏、iOS/Android App |
| **模型多供应商** | OpenAI / Anthropic / 本地模型，故障转移 |

---

## 亮点

- **37.6 万 Star**，GitHub 上增长最快的 AI 项目之一
- **赞助商阵容豪华**：OpenAI、GitHub、NVIDIA、Vercel
- **全面支持中文平台**：微信 + QQ，国内用户友好
- **本地优先**：Gateway 跑在自己设备上，不依赖云服务
- **Skill 系统**：类似 Claude Code 的 Skills，有 ClawHub 市场
- **DM 安全默认**：配对码机制，防止未授权访问
- **活跃社区**：Discord 频道、持续更新（日更 CHANGELOG）

---

## 适用场景 / cc-undo 跟踪方向

| 方向 | 关注点 |
|------|--------|
| **个人 AI 助手** | 替代商业 AI 助手的自托管方案 |
| **多通道统一收件箱** | 所有聊天工具一个 Agent 回复 |
| **Skill 生态** | ClawHub 技能市场可作为 cc-undo Skill 参考 |
| **Agent 路由架构** | 多 Agent 路由 + 沙箱的设计模式 |
| **中文平台支持** | 微信/QQ 接入的参考实现 |
| **语音交互** | Voice Wake + Talk Mode 与 VoiceMode 对比 |

---

## 相关链接

- [GitHub](https://github.com/openclaw/openclaw)
- [官网](https://openclaw.ai)
- [文档](https://docs.openclaw.ai)
- [ClawHub（Skill 市场）](https://clawhub.ai)
- [Nix 包](https://github.com/openclaw/nix-openclaw)
- [Docker 安装指南](https://docs.openclaw.ai/install/docker)

---

> 🦞 "EXFOLIATE! EXFOLIATE!" — 龙虾会脱壳，但不会掉线。
