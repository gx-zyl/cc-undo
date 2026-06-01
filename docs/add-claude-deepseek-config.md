# Claude Code CLI × DeepSeek V4 配置模板

让 Claude Code CLI 通过 DeepSeek V4 的 Anthropic 兼容 API 运行。模型：deepseek-v4-flash / v4-pro，API：`api.deepseek.com`。

```
  ┌─────────────────────────────────────────────────────────┐
  │                  Claude Code CLI                         │
  │         claude 命令         model: "opus"                │
  └────────────────────┬────────────────────────────────────┘
                       │ ANTHROPIC_BASE_URL
                       ▼
  ┌─────────────────────────────────────────────────────────┐
  │             api.deepseek.com/anthropic                   │
  └────────────────────┬────────────────────────────────────┘
                       │
          ┌────────────┼────────────┐
          ▼            ▼            ▼
  ┌────────────┐ ┌────────────┐ ┌────────────┐
  │ Flash 模型  │ │ Pro 模型   │ │ 推理模型    │
  └────────────┘ └────────────┘ └────────────┘
```

## 核心配置

| 环境变量 | 值 | 说明 |
|----------|-----|------|
| `ANTHROPIC_BASE_URL` | `https://api.deepseek.com/anthropic` | API 端点 |
| `ANTHROPIC_MODEL` | `deepseek-v4-flash[1m]` | 默认模型 |
| `ANTHROPIC_REASONING_MODEL` | `deepseek-v4-flash[1m]` | 推理模型 |
| `CLAUDE_CODE_EFFORT_LEVEL` | `max` | 最大推理力度 |
| `API_TIMEOUT_MS` | `1000000` | 超时时间 |
| `CLAUDE_CODE_USE_POWERSHELL_TOOL` | `1` | Windows PowerShell 模式 |

## 关键特性

- 一行 `ANTHROPIC_BASE_URL` 切换供应商
- 自动使用 DeepSeek V4 全系模型（Flash/Pro）
- 保持 Claude Code CLI 原生体验不变
- 支持 Workflows、ToolSearch、Agent 等全部功能

## cc-undo 跟踪方向

- DeepSeek API 兼容性变更（Anthropic 接口版本更新）
- 模型能力差异（Flash vs Pro 的选择策略）
- 配置模板随 Claude Code CLI 版本更新

[→ 本地模板](.claude/settings.local.json)
