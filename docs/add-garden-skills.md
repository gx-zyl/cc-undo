# Garden Skills — 生产级 Agent Skills 精选集

> ConardLi 出品的 Agent Skills 集合，为 Claude Code / Cursor / Codex 等 AI 编码 Agent 提供开箱即用的 Skill。

```
                          ┌────────────────────────────────────────────────────────┐
                          │                Garden Skills 精选集                     │
                          │        ConardLi · 7703⭐ · MIT · 4 个生产级 Skill      │
                          └────────────────────────────────────────────────────────┘
                                            │
             ┌──────────────────────────────┼──────────────────────────────┐
             │                              │                              │
             ▼                              ▼                              ▼
   ┌─────────────────────┐    ┌─────────────────────┐    ┌─────────────────────────┐
   │ web-video-          │    │ web-design-          │    │ gpt-image-2              │
   │ presentation        │    │ engineer             │    │                          │
   │                     │    │                      │    │  图片生成 / Prompt 工程   │
   │ Web 视频/演示 制作    │    │ 设计/前端 工程师      │    │                          │
   │                     │    │                      │    │  18 类视觉场景            │
   │ 23 内置主题          │    │ 25 风格配方           │    │  79 模板                  │
   │ 可插拔 TTS          │    │ 6 步设计工作流         │    │  3 种运行时模式           │
   └─────────┬───────────┘    └──────────┬────────────┘    └─────────────┬───────────┘
             │                           │                               │
             └───────────────────────────┼───────────────────────────────┘
                                         │
                                         ▼
                              ┌──────────────────────┐
                              │   beautiful-article   │
                              │                       │
                              │  任意来源 → 精美文章   │
                              └──────────────────────┘
```

| 属性 | 值 |
|------|-----|
| **⭐ Stars** | 7,703 |
| **🍴 Forks** | 1,051 |
| **🖥️ 语言** | CSS |
| **📜 协议** | MIT |
| **👤 作者** | [ConardLi](https://github.com/ConardLi) |
| **🏷️ Topics** | agent, claude, gpt-image-2, rag, skills, web-design |
| **🔗 链接** | <https://github.com/ConardLi/garden-skills> |

## 核心内容

| Skill | 分类 | 亮点 |
|-------|------|------|
| **web-video-presentation** | 视频 / 演示制作 | 23 个内置主题、1920×1080 录制备用、可插拔 TTS（MiniMax / OpenAI / ElevenLabs） |
| **web-design-engineer** | 设计 / 前端 | 6 步设计工作流、25 个锚定风格配方（Linear / Aesop / Pentagram 等）、反陈词滥调清单 |
| **gpt-image-2** | 图片生成 | 18 类 79 模板、3 种运行模式、支持图片生成+编辑 |
| **beautiful-article** | 内容创作 | 任意输入源 → 精美排版文章 |

## 兼容性

| Agent / Runtime | Skill 位置 | 状态 |
|----------------|-----------|------|
| **Claude Code** | `.claude/skills/<name>/` | ✅ 已验证 |
| **Claude.ai** (Web) | 设置 → Capabilities → Skills | ✅ 已验证 |
| **Cursor** | `.agents/skills/<name>/` | ✅ 已验证 |
| **Codex CLI** | `.codex/skills/<name>/` | ✅ 已验证 |
| **Gemini CLI** | extension manifest | ✅ 已验证 |
| **OpenCode** | `.opencode/skills/<name>/` | ✅ 已验证 |

## 安装方式

```bash
# 方式一：通过 skills CLI（npx）
npx skills add ConardLi/garden-skills

# 方式二：Git Submodule
git submodule add https://github.com/ConardLi/garden-skills.git vendor/garden-skills
ln -s ../../vendor/garden-skills/skills/web-design-engineer .claude/skills/web-design-engineer
```

## 适用场景 / cc-undo 跟踪方向

- **Skill 即插即用** — 每个 Skill 是独立目录（SKILL.md + references/ + scripts/），适配当前 cc-undo 的 Skill 生态建设
- **设计工程化** — `web-design-engineer` 的 6 步工作流和 25 个风格配方可集成到前端构建管道
- **视频生产流水线** — `web-video-presentation` 提供录制备用的 Web 演示框架，可用于教程/产品展示
- **GPT Image 2 模板库** — 79 个 prompt 模板可复用到图片生成工作流

## 参考

- [Agent Skills 规范 (agentskills.io)](https://agentskills.io)
- [Anthropic 官方 Skills 参考](https://github.com/anthropics/skills)
- [awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills)
- [obra/superpowers](https://github.com/obra/superpowers)
