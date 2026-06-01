# andrej-karpathy-skills

基于 Andrej Karpathy 观察的 Claude Code 行为准则 —— 四条原则解决 LLM 编码常见陷阱。

```
┌──────────────────────────────────────────────────────────────────┐
│              🧠  Karpathy-Inspired Claude Code Guidelines         │
│                    163k ⭐  ·  一份 CLAUDE.md 搞定行为规范        │
├──────────────┬──────────────┬──────────────┬─────────────────────┤
│  先思考      │  保持简单    │  精准修改    │  目标驱动            │
│  Think       │  Simplicity  │  Surgical    │  Goal-Driven        │
├──────────────┼──────────────┼──────────────┼─────────────────────┤
│  ❌ 默认就干  │  ❌ 过度抽象  │  ❌ 顺手改    │  ❌ 模糊任务         │
│  ❌ 隐藏困惑  │  ❌ 过度设计  │  ❌ 改无关    │  ❌ 无验证标准       │
│              │              │  代码        │                     │
├──────────────┼──────────────┼──────────────┼─────────────────────┤
│  ✅ 显式假设  │  ✅ 最简代码  │  ✅ 只动必须  │  ✅ 测试先行         │
│  ✅ 多方案    │  ✅ 无超前    │  ✅ 清理自己  │  ✅ 可验证标准       │
│  ✅ 会质疑    │  功能        │  的残留      │  ✅ 自我循环         │
│  ✅ 困惑就问  │  ✅ 50 行不  │  ✅ 不动陈年  │                     │
│              │  写 200 行   │  烂代码      │                     │
└──────────────┴──────────────┴──────────────┴─────────────────────┘
```

| 属性 | 说明 |
|------|------|
| 作者 | [forrestchang](https://github.com/forrestchang) / multica-ai |
| ⭐ | 163k+ |
| 协议 | - |
| 核心能力 | 一份 CLAUDE.md 约束 Agent 行为，解决 LLM 编码四大陷阱 |

## 四条原则详解

### 1. 先思考 (Think Before Coding)

LLM 常默默选中一种解释就直接开干。这条原则强制显式推理：

- **显式假设** — 不确定就问，不猜
- **多方案呈现** — 有歧义时不擅自选择
- **该质疑就质疑** — 有更简单方案就说出来
- **困惑就停** — 说出不清楚的地方，请求澄清

### 2. 保持简单 (Simplicity First)

对抗过度工程的倾向：

- 不多做没要求的功能
- 一次用的代码不搞抽象
- 不要"灵活性"、"可配置性"这类没要求的东西
- 如果 200 行能写成 50 行，就重写

### 3. 精准修改 (Surgical Changes)

编辑代码时的"手术原则"：

- 不"顺手改进"相邻代码、注释、格式
- 不重构没坏的东西
- 匹配现有风格，哪怕你做得更好
- 发现无关的死代码，**提出来但不删**

### 4. 目标驱动 (Goal-Driven Execution)

将命令式任务转化为可验证的目标：

```
❌ "加个校验"      → ✅ "为无效输入写测试，然后让它通过"
❌ "修个 bug"      → ✅ "写个复现测试，然后让它通过"
❌ "重构 X"       → ✅ "确保测试前后都通过"
```

## 安装方式

- **Claude Code Plugin**：`/plugin install andrej-karpathy-skills@karpathy-skills`
- **CLAUDE.md**：`curl -o CLAUDE.md https://raw.githubusercontent.com/.../CLAUDE.md`
- **支持平台**：Claude Code、Cursor、Windsurf、GitHub Copilot、Cline

## cc-undo 跟踪方向

- 与 cc-undo 自身 CLAUDE.md 的整合/兼容
- 四条原则在 cc-undo 项目中的实际执行度
- 新增 Karpathy 后续观察的更新

[→ GitHub](https://github.com/forrestchang/andrej-karpathy-skills)
