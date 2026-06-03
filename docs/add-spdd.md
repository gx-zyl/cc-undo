# SPDD — Structured-Prompt-Driven Development

> Thoughtworks 出品，Martin Fowler 站点发布的结构化提示驱动开发方法论。把 Prompt 当作一等交付工件 —— 版本管理、评审、复用、持续改进。

:```ascii

                              ◆  SPDD 双核引擎 ◆

    ┌─────────────────────────────────────────────────────────────────────┐
    │                                                                     │
    │   ① REASONS Canvas (7 要素 Prompt 生成)                             │
    │                                                                     │
    │   ┌──────┐  ┌────────┐  ┌────────┐  ┌────────┐  ┌──────────┐       │
    │   │ R    │  │ E      │  │ A      │  │ S      │  │ O         │       │
    │   │ 需求 │  │ 实体   │  │ 方法   │  │ 结构   │  │ 操作      │       │
    │   │ (DoD)│  │ 领域关系│  │ 策略   │  │ 代码位 │  │ 实现步骤  │       │
    │   └──────┘  └────────┘  └────────┘  └────────┘  └──────────┘       │
    │                                                                     │
    │   ┌──────────┐  ┌──────────┐                                        │
    │   │ N        │  │ S        │  ── 7 要素 → 结构化 Prompt            │
    │   │ 规范     │  │ 安全护栏 │                                        │
    │   │ (工程标准)│  │ (不可越界)│                                       │
    │   └──────────┘  └──────────┘                                        │
    │                                                                     │
    │   ② SPDD Workflow (闭环流程)                                        │
    │                                                                     │
    │   现实偏离 Prompt ───────────────────────────────────┐               │
    │       ↓                                                │            │
    │   [修复 Prompt 优先] ─→ [再生成代码] ─→ [验证一致] ─→ 再检查       │
    │       ↑                                                │            │
    │       └────────────────────────────────────────────────┘            │
    │                                                                     │
    │   核心信条: "当现实偏离时，先修 Prompt —— 再更新代码。"               │
    └─────────────────────────────────────────────────────────────────────┘
:```

:```ascii

                     ┌─ REASONS Canvas 数据流 ────────────────────────┐
                     │                                                 │
                     │  原始需求 ──→ ┌──────────────────────┐           │
                     │              │  REASONS Canvas 生成器 │           │
                     │  上下文 ────→ │    (7 要素结构化)     │──→ Prompt │
                     │              │                      │           │
                     │  约束 ──────→ └──────────────────────┘           │
                     │                                                │
                     └────────────────────────────────────────────────┘
                     ┌─ SPDD 工作流 ───────────────────────────────────┐
                     │                                                  │
                     │  Prompt ─→ [AI 生成代码] ─→ [人工审查] ─→ [验收] │
                     │                     ↑              │               │
                     │                     │      不一致   │               │
                     │                     └──── 修 Prompt ┘              │
                     │                                                  │
                     │  内置命令: /spdd-analysis /spdd-reasons-canvas    │
                     │  /spdd-generate /spdd-prompt-update /spdd-sync   │
                     └──────────────────────────────────────────────────┘
:```

| 属性 | 值 |
|------|-----|
| **作者** | Wei Zhang & Jessie Jie Xia (Thoughtworks) |
| **发布** | 2026-04-28 on martinfowler.com |
| **类型** | 工程方法论 + AI 开发工作流 |
| **CLI 工具** | openspdd (开源) |
| **核心能力** | REASONS Canvas 7 要素 Prompt 生成 + Prompt-as-first-class 闭环工作流 |

## 适用场景

| 场景 | 说明 |
|------|------|
| 🏭 标准化交付 | 团队需要一致的 AI 开发流程和 Prompt 规范 |
| 🔄 知识传承 | Prompt 作为可版本管理、可评审的交付物 |
| 🛡️ 合规环境 | Safeguards 护栏确保安全/性能/不变性边界不被突破 |
| 🤖 AI 协作 | 结构化的 Prompt 减少 AI 输出的不确定性 |

## cc-undo 跟踪方向

- 将 REASONS Canvas 模式落地到实际项目中（对照 OpenSpec 的 spec-driven 方式）
- `openspdd` CLI 工具的实际使用体验
- SPDD Workflow 与现有 CI/CD 管线的集成方式

## 原文链接

- [Structured-Prompt-Driven Development (SPDD) — martinfowler.com](https://martinfowler.com/articles/structured-prompt-driven/)
- [Martin Fowler 的点评 (Fragments, 2026-05-05)](https://martinfowler.com/fragments/2026-05-05.html)
