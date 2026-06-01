# cc-undo

跟踪未完成的事项 —— 连接项目缺口与行动计划。

```
                        ╔═══════════════════╗
                  ┌─────╢    cc-undo         ╟─────┐
                  │     ║  跟踪"未做"的事     ║     │
                  │     ╚═══════════════════╝     │
                  │                              │
         ┌────────▼────────┐         ┌───────────▼────────┐
         │   发现缺口        │         │    追踪状态         │
         │  · 未实现的 Feature │         │  · 🔴 待办          │
         │  · 已知 Bug       │         │  · 🟡 进行中        │
         │  · 待优化项       │         │  · 🟢 已完成        │
         │  · 遗漏场景       │         │  · ⚪ 已关闭        │
         └────────┬────────┘         └───────────┬────────┘
                  │                              │
                  └──────────┬───────────────────┘
                             │
                    ┌────────▼────────┐
                    │   输出/同步      │
                    │  · 优先级矩阵    │
                    │  · 进度看板      │
                    │  · 关联项目连线  │
                    └─────────────────┘
```

---

## 目录

- [AI / 内容生成](#ai--内容生成)
  - [ppt-master](docs/add-ppt-master.md)
- [数据采集 / Web](#数据采集--web)
  - [Scrapling](docs/add-scrapling.md)
- [开发工具](#开发工具)
  - [Understand-Anything](docs/add-understand-anything.md)
  - [VoiceMode](docs/add-voicemode.md)
  - [Claude × DeepSeek 配置](docs/add-claude-deepseek-config.md)
- [Agent / Skill](#agent--skill)
  - [andrej-karpathy-skills](docs/add-karpathy-skills.md)
  - [OpenSpec](docs/add-openspec.md)
  - [mattpocock/skills](docs/add-mattpocock-skills.md)
  - [web-access](docs/add-web-access.md)
- [哲学](#哲学)
  - [huangting-protocol](docs/add-huangting-protocol.md)

---

## AI / 内容生成

### ppt-master

AI 从任意文档生成原生可编辑 PPTX。

[→ GitHub](https://github.com/hugohe3/ppt-master) · [→ 详细](docs/add-ppt-master.md)

---

## 数据采集 / Web

### Scrapling

自适应 Web 爬虫框架 —— 从单次请求到全站爬取，一站式解决。

[→ GitHub](https://github.com/D4Vinci/Scrapling) · [→ 详细](docs/add-scrapling.md)

---

## 开发工具

### Understand-Anything

将任意代码库转为可探索、可搜索、可提问的交互式知识图谱。

[→ GitHub](https://github.com/Lum1104/Understand-Anything) · [→ 详细](docs/add-understand-anything.md)

### VoiceMode

Natural voice conversations with Claude Code —— 用语音和 AI 对话。

[→ GitHub](https://github.com/mbailey/voicemode) · [→ 详细](docs/add-voicemode.md)

### Claude × DeepSeek 配置

Claude Code CLI 连接 DeepSeek V4 的配置模板。一行 `ANTHROPIC_BASE_URL` 切换供应商。

[→ 详情](docs/add-claude-deepseek-config.md)

---

## Agent / Skill

### andrej-karpathy-skills

基于 Karpathy 观察的 Claude Code 行为准则：先思考、保持简单、精准修改、目标驱动。

[→ GitHub](https://github.com/forrestchang/andrej-karpathy-skills) · [→ 详细](docs/add-karpathy-skills.md)

### OpenSpec

Spec-driven development —— 用精确规格驱动 AI 生成靠谱代码。

[→ GitHub](https://github.com/Fission-AI/OpenSpec) · [→ 详细](docs/add-openspec.md)

### mattpocock/skills

Skills for Real Engineers —— 日常使用的 Agent Skills 集合。对齐沟通、共享语言、反馈闭环。

[→ GitHub](https://github.com/mattpocock/skills) · [→ 详细](docs/add-mattpocock-skills.md)

### web-access

给 AI Agent 装上完整联网能力的 Skill。三层通道调度 + 浏览器 CDP + 并行分治。

[→ GitHub](https://github.com/eze-is/web-access) · [→ 详细](docs/add-web-access.md)

---

## 哲学

### huangting-protocol

The Operating System for Human Flourishing —— 促进人类繁荣的协议。

[→ GitHub](https://github.com/XianDAO-Labs/huangting-protocol) · [→ 详细](docs/add-huangting-protocol.md)


