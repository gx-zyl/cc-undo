# mattpocock/skills

Skills for Real Engineers —— Matt Pocock 日常使用的 Agent Skills 集合。解决三大工程痛点：沟通偏差、术语混乱、反馈缺失。

```
┌─────────────────────────────────────────────────────────────┐
│                  🛠️  Matt Pocock Skills                     │
│               Skills for Real Engineers                     │
│                         113k ⭐                              │
├──────────────┬──────────────┬──────────────┬────────────────┤
│    对齐沟通   │   共享语言    │   反馈闭环    │   基础设施      │
│              │              │              │                │
│  /grill-me   │  CONTEXT.md  │  /verify     │  /setup-*      │
│  /triage     │  ADR 文档    │  TDD 循环    │  GitHub 集成   │
│  需求澄清    │  术语统一     │  红绿重构    │  Linear 集成   │
│              │              │              │                │
└──────────────┴──────────────┴──────────────┴────────────────┘
```

| 属性 | 说明 |
|------|------|
| 作者 | [mattpocock](https://github.com/mattpocock) |
| 语言 | Shell |
| ⭐ | 113k+ |
| 协议 | MIT |
| 核心能力 | Agent 对齐 / 共享语言 / 测试反馈 / 工作流集成 |

## 技能矩阵

| 类别 | 技能 | 解决的问题 |
|------|------|-----------|
| 对齐 | `/grill-me` | Agent 不理解真实需求，沟通偏差 |
| 对齐 | `/grill-with-docs` | 同上 + 领域术语沉淀 + ADR 记录 |
| 对齐 | `/triage` | Issue 分类管理混乱 |
| 语言 | `CONTEXT.md` | Agent 用词啰嗦，术语不统一 |
| 语言 | ADR | 架构决策无记录，上下文丢失 |
| 反馈 | `/verify` | 代码改了但不知道是否正常工作 |
| 反馈 | TDD 循环 | 无测试驱动，改完就崩 |
| 基础设施 | `/setup-*` | 新项目初始化步骤繁琐 |
| 基础设施 | 工具集成 | GitHub / Linear / 本地文件工作流 |

## 核心理念

- **小即美**：每个 Skill 聚焦一件事，可独立使用
- **可组合**：Skill 之间自由组合，按需拼接工作流
- **可适配**：源码开放，随意 hack 成自己的版本
- **模型无关**：不绑定特定 LLM，所有 Agent 通用

## cc-undo 跟踪方向

- 新 Skill 的跟进（Matt 持续在更新）
- 与 add-md 等自定义 Skill 的功能重叠/互补
- 特定 Agent 平台（Cursor/Codex）的兼容问题
- `CONTEXT.md` 共享语言模式对 cc-undo 项目的适用性

[→ GitHub](https://github.com/mattpocock/skills)
