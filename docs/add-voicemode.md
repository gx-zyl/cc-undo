# VoiceMode

Natural voice conversations with Claude Code —— 用语音和 Claude Code 自然对话。

```
  ┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────────┐
  │  语音输入  │───→│  语音识别  │───→│  Claude   │───→│   语音输出    │
  │           │    │          │    │  处理     │    │              │
  │ · 麦克风   │    │ · Whisper│    │ · 理解    │    │ · Kokoro TTS │
  │ · 静音检测 │    │ · OpenAI │    │ · 推理    │    │ · 流式播放   │
  │ · 按键触发 │    │ · 离线   │    │ · 回复    │    │ · 低延迟     │
  └──────────┘    └──────────┘    └──────────┘    └──────────────┘
```

| 属性 | 说明 |
|------|------|
| 作者 | [mbailey](https://github.com/mbailey) |
| 语言 | Python |
| ⭐ | 1.1k |
| 核心能力 | 通过 MCP 实现 Claude Code 的语音对话能力 |

## 能力

| 能力 | 说明 |
|------|------|
| 自然对话 | 边说边听，实时响应 |
| 离线语音 | 可选 Whisper STT + Kokoro TTS 本地运行 |
| 低延迟 | 对话级别的实时响应速度 |
| 智能静音检测 | 说话结束自动停止录音 |
| 隐私选项 | 全本地运行或云端服务 |
| 平台支持 | Linux、macOS、Windows (WSL)、NixOS |

## 安装方式

```bash
# 推荐：Claude Code Plugin
claude plugin marketplace add mbailey/voicemode
claude plugin install voicemode@voicemode

# 或：Python 包
uvx voice-mode-install
claude mcp add --scope user voicemode -- uvx --refresh --from voice-mode voicemode-mcp-launcher
```

## 适用场景

- 走路/通勤时和 Claude 讨论代码
- 做饭时调试问题
- 长时间看屏后让眼睛休息
- 手被占用（拿咖啡、抱东西）时继续工作

## cc-undo 跟踪方向

- 麦克风/音频驱动的跨平台兼容问题
- 离线语音识别（Whisper）的准确度
- MCP 协议变更导致连接失效

[→ GitHub](https://github.com/mbailey/voicemode)
