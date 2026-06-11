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
  - [MarkItDown](docs/add-markitdown.md)
  - [Headroom](docs/add-headroom.md)
  - [SPDD](docs/add-spdd.md)
  - [Understand-Anything](docs/add-understand-anything.md)
  - [VoiceMode](docs/add-voicemode.md)
  - [Claude × DeepSeek 配置](docs/add-claude-deepseek-config.md)
  - [java-all-call-graph](docs/add-java-all-call-graph.md)（含 Web 界面）
  - [BaiduPCS-Rust](docs/add-baidupcs-rust.md)
- [平台 / 服务](#平台--服务)
  - [OpenClaw](docs/add-openclaw.md)
- [安全工具](#安全工具)
  - [hackingtool](docs/add-hackingtool.md)
- [Agent / Skill](#agent--skill)
  - [Claude Code Essential Agents](docs/add-claude-code-essential-agents.md)
  - [Skill 设计方法论](docs/add-skill-design.md)
  - [andrej-karpathy-skills](docs/add-karpathy-skills.md)
  - [OpenSpec](docs/add-openspec.md)
  - [mattpocock/skills](docs/add-mattpocock-skills.md)
  - [web-access](docs/add-web-access.md)
  - [wechat-acp](docs/add-wechat-acp.md)
  - [Garden Skills](docs/add-garden-skills.md)
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

### java-all-call-graph

Java 代码全量调用链生成工具。字节码级分析，输出完整调用图。

[→ GitHub](https://github.com/Adrninistrator/java-all-call-graph) · [→ 详细](docs/add-java-all-call-graph.md)

### BaiduPCS-Rust

Rust 构建的百度网盘第三方客户端 —— 多线程下载、本地加密上传、自动备份、Web 管理面板 + TOTP 双因素认证。

```
  上传: 本地 → AES加密 → 百度网盘
  下载: 网盘 → 多线程分片 → 解密 → 本地
  备份: 本地目录 → 定时增量同步 → 网盘
```

| ⭐ 499 | 🦀 Rust+Vue3 | 🔐 Apache-2.0 |
|--------|--------------|---------------|

[→ GitHub](https://github.com/komorebiCarry/BaiduPCS-Rust) · [→ 详细](docs/add-baidupcs-rust.md)

### MarkItDown

Microsoft 开源的文档→Markdown 转换工具。PDF / Word / PPT / Excel / HTML / 图片 / 音频 通通一行命令转 Markdown，专为 LLM 数据管道打造。

```
  PDF/DOCX/PPTX ─▶ [MarkItDown 解析引擎] ─▶ 结构保留的 Markdown ─▶ LLM / RAG 管道
                    ├ 插件系统扩展格式
                    ├ MCP Server 集成
                    └ Azure AI 增强解析
```

| ⭐ ~124k | 🐍 Python 3.10+ | MIT |
|---------|-----------------|-----|

[→ GitHub](https://github.com/microsoft/markitdown) · [→ 详细](docs/add-markitdown.md)

### Headroom

Compress tool outputs, logs, files, and RAG chunks before they reach the LLM —— 60-95% fewer tokens, same answers. 支持 Library API、透明 Proxy、MCP Server 三种模式。

```
Tool输出/日志/文件/RAG ─▶ [Headroom Compression Engine] ─▶ 精简后的 LLM 上下文
                           ├── Library   (Python / TypeScript)
                           ├── Proxy     (透明压缩)
                           └── MCP Server (Claude / Cursor 集成)
```

| ⭐ ~10.5k | 🐍 Python | Apache-2.0 | 三种集成模式 |
|----------|-----------|------------|------------|

[→ GitHub](https://github.com/chopratejas/headroom) · [→ 详细](docs/add-headroom.md)

### SPDD

Structured-Prompt-Driven Development — Thoughtworks 出品的 Prompt 驱动开发方法论。把 Prompt 当一等交付工件，7 要素 REASONS Canvas 生成 + 先修 Prompt 再改代码的闭环工作流。

```
  REASONS Canvas (7 要素)                     SPDD 闭环
  ┌──┐ ┌──┐ ┌──┐ ┌──┐ ┌──┐ ┌──┐ ┌──┐    Prompt ─→ 代码 ─→ 审查
  │R │ │E │ │A │ │S │ │O │ │N │ │S │       ↑           │
  │需求│ │实体│ │方法│ │结构│ │操作│ │规范│ │ 护栏│    └── 修 Prompt ─┘
  └──┘ └──┘ └──┘ └──┘ └──┘ └──┘ └──┘    现实偏离 → 先修 Prompt！
```

| 📄 Martin Fowler | 🏢 Thoughtworks | 🛠️ openspdd CLI |
|------------------|-----------------|------------------|

[→ martinfowler.com 原文](https://martinfowler.com/articles/structured-prompt-driven/) · [→ 详细](docs/add-spdd.md)

---

## 平台 / 服务

### OpenClaw

自托管的个人 AI 助手 —— 本地优先网关，20+ 消息平台统一接入，多 Agent 路由 + Skill 生态 + 语音交互。

```
     🦞 "EXFOLIATE! EXFOLIATE!"
                                                
  消息进 ─▶ [通道适配器] ─▶ [Gateway 控制面] ─▶ [Multi-Agent 路由] ─▶ [AI 模型] ─▶ 回复出
                                                                                
  WhatsApp / Telegram / Discord / Slack / 微信 / QQ / Signal / iMessage ...
                                    20+ 平台
```

| ⭐ 376k | 🦀 TypeScript | MIT | 自托管 | 20+ 通道 | ClawHub 技能市场 | 微信+QQ 支持 |
|---------|--------------|-----|--------|----------|------------------|-------------|

[→ GitHub](https://github.com/openclaw/openclaw) · [→ 详细](docs/add-openclaw.md)

---

## Agent / Skill

### Claude Code Essential Agents

10 個開箱即用的 Claude Code 自訂 Agent 配置 —— Code Reviewer、Debugger、Test Writer、Security Auditor、Doc Writer、Git Expert、API Designer、Performance Optimizer、Database Expert、Refactor Assistant。每個都有完整 YAML，複製到 `.claude/agents/` 即可啟用。

```
  .claude/agents/*.md ──▶ [Claude Code Agent 引擎]
                            ├── Code Reviewer  (Sonnet) 程式碼審查
                            ├── Debugger       (Sonnet) 除錯追蹤
                            ├── Test Writer    (Sonnet) 測試撰寫
                            ├── Security Auditor (Sonnet) 資安稽核
                            ├── Doc Writer     (Haiku)  文件撰寫
                            ├── Git Expert     (Haiku)  版本控制
                            ├── API Designer   (Sonnet) REST 設計
                            ├── Perf Optimizer (Sonnet) 效能優化
                            ├── Database Expert (Sonnet) 資料庫
                            └── Refactor Assist (Sonnet) 重構助手
```

| 📝 Claude World | 🎯 10 個 Agent | 💰 成本優化指南 | 🔧 複製即用 |
|------------------|----------------|-----------------|------------|

[→ 原文](https://claude-world.com/zh-tw/articles/claude-code-essential-agents/) · [→ 详细](docs/add-claude-code-essential-agents.md)

### Skill 设计方法论

别再让 AI 自动总结 Skill 了！Skill 不是长 Prompt，是 `SKILL.md` + `references/` + `scripts/` 的结构化目录。

```
  长 Prompt              Skill
  ┌────────────┐        ┌──────────────┐
  │ 流程+模板   │  →→→  │ SKILL.md     │ 入口/流程
  │ 配置+偏好   │        │ references/  │ 模板/配置/示例
  │ 临时上下文  │        │ scripts/     │ 稳定动作
  └────────────┘        │ AI           │ 判断类工作
                        └──────────────┘
  × 模型每次重理解        ✓ 按设计好的路径执行
```

| 📝 姜饼 | 📖 知乎专栏 | 🎯 Skill 设计 5 步法 |
|---------|-------------|---------------------|

[→ 知乎原文](https://zhuanlan.zhihu.com/p/2044725275867486082) · [→ 详细](docs/add-skill-design.md)

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

### wechat-acp

WeChat ↔ ACP 兼容 AI Agent 的桥接器 —— 微信聊天直连 Claude / Copilot / Gemini 等 11+ 个 Agent。

[→ GitHub](https://github.com/formulahendry/wechat-acp) · [→ 详细](docs/add-wechat-acp.md)

### Garden Skills

ConardLi 出品的生产级 Agent Skills 集合 —— 4 个即插即用 Skill，覆盖 Web 演示制作、设计工程、图片生成、文章创作。

```
                          ┌─────────────────────────────────────┐
                          │         Garden Skills 精选集          │
                          │   web-video  │  web-design  │  image  │
                          └─────────────────────────────────────┘
                                         │
                    ┌────────────────────┼────────────────────┐
                    │                    │                    │
                    ▼                    ▼                    ▼
          ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐
          │ web-video-       │  │ web-design-      │  │ gpt-image-2      │
          │ presentation     │  │ engineer         │  │                  │
          │                  │  │                  │  │ 18类 79模板      │
          │ 23主题 + TTS     │  │ 25风格配方        │  │ 3种运行模式      │
          └─────────────────┘  └─────────────────┘  └─────────────────┘
```

| ⭐ 7,703 | 🖥️ CSS | 📜 MIT | 4 个生产级 Skill |
|----------|--------|-------|-----------------|

[→ GitHub](https://github.com/ConardLi/garden-skills) · [→ 详细](docs/add-garden-skills.md)

---

## 安全工具

### hackingtool

ALL IN ONE Hacking Tool For Hackers —— 77k ⭐ 的集成式黑客工具包。覆盖密码攻击、Web 攻击、DDoS、无线攻击、隐写分析、CTF 工具六大模块。

```
┌──密码攻击──┬──Web攻击───┬──DDoS───┐
│ Hashcat    │ SQLmap    │ Slowloris│
│ John Ripper│ XSS 检测  │ UDP 泛洪 │
│ 字典生成    │ 目录爆破  │ SYN 泛洪 │
├──无线攻击──┼──隐写分析──┼──CTF专用──┤
│ WPA 破解   │ LSBS      │ Reverse  │
│ 嗅探       │ Stegseek  │ Forensics│
│ 伪造AP     │ 图片分析  │ 编码转换  │
└────────────┴───────────┴──────────┘
```

| ⭐ 77k | 🐍 Python | 📜 MIT | 🛡️ 六大模块 |
|--------|----------|---------|------------|

[→ GitHub](https://github.com/Z4nzu/hackingtool) · [→ 详细](docs/add-hackingtool.md)

---

## 哲学

### huangting-protocol

The Operating System for Human Flourishing —— 促进人类繁荣的协议。

[→ GitHub](https://github.com/XianDAO-Labs/huangting-protocol) · [→ 详细](docs/add-huangting-protocol.md)


