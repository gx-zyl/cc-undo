# Chrome DevTools for Agents 1.0

Chrome 官方发布的首个稳定版 DevTools for Agents —— 为 AI 编码代理提供实时浏览器调试能力。MCP Server + CLI + Agent Skills 三通道接入 Chrome 开发者工具。

## 系统架构

```
  ┌─────────────────────────────────────────────────────────────┐
  │              AI 编码代理（Claude / Gemini / Antigravity）     │
  │        ┌──────────┐ ┌──────────┐ ┌──────────────────────┐  │
  │        │ 自动调试   │ │ 质量审核  │ │ 内存泄漏检测          │  │
  │        │ 会话移交  │ │ 模拟仿真  │ │ 扩展程序 / WebMCP    │  │
  │        └────┬─────┘ └────┬─────┘ └────────┬─────────────┘  │
  └─────────────┼────────────┼────────────────┼────────────────┘
                │            │                │
  ┌─────────────▼────────────▼────────────────▼────────────────┐
  │              Chrome DevTools for Agents v1.0                │
  │  ┌──────────────────┐  ┌──────────────┐  ┌──────────────┐ │
  │  │    MCP Server    │  │     CLI      │  │ Agent Skills │ │
  │  │  (工具协商/发现)  │  │ (批量脚本/省token)│ (a11y/性能/内存)│ │
  │  └────────┬─────────┘  └──────┬───────┘  └──────┬───────┘ │
  │           │                   │                  │          │
  │           └───────────────────┼──────────────────┘          │
  │                               │                             │
  │                    ┌──────────▼──────────┐                  │
  │                    │  DevTools 协议桥接器  │                  │
  │                    └──────────┬──────────┘                  │
  └───────────────────────────────┼────────────────────────────┘
                                  │
  ┌───────────────────────────────▼────────────────────────────┐
  │                      Chrome 浏览器实例                       │
  │  ┌──────┐ ┌────────┐ ┌────────┐ ┌──────────┐ ┌──────────┐│
  │  │ DOM  │ │Console │ │Network │ │Lighthouse│ │ 第三方工具 ││
  │  │ 检查  │ │ 日志    │ │ 请求    │ │ 审核引擎  │ │ 内部状态  ││
  │  └──────┘ └────────┘ └────────┘ └──────────┘ └──────────┘│
  └─────────────────────────────────────────────────────────────┘
```

## 核心能力矩阵

| 能力 | 接入方式 | 应用场景 |
|------|----------|----------|
| **Lighthouse 审核** | MCP / CLI | 自动检查 a11y、SEO、最佳实践、性能 |
| **设备/网络模拟** | MCP / CLI | 移动端测试、地理位置模拟、限速模拟 |
| **Chrome 扩展调试** | MCP | 安装/重载扩展、触发操作、后台脚本检查 |
| **WebMCP 工具调试** | MCP | 列出/调用/验证 WebMCP 结构化工具 |
| **内存泄漏检测** | MCP + Skill | 堆快照、分离 DOM 节点分析 |
| **会话移交 (auto-connect)** | 浏览器插件 | 共享当前浏览器上下文给代理 |
| **第三方开发者工具** | 自定义 API | 暴露应用内部状态给 AI 代理 |

## 接入方式

```
┌──────────────────────────────────────────────────────────────┐
│                    三种交互通道                                │
├─────────────────┬────────────────┬──────────────────────────┤
│   MCP Server    │      CLI       │     Agent Skills         │
│   (工具协商)     │   (批量脚本)    │    (专家指令)             │
├─────────────────┼────────────────┼──────────────────────────┤
│ LLM 自主发现调用 │ 预先编排操作序列 │ 教导代理何时/如何使用工具 │
│ 实时双向通信     │ 低 token 消耗   │ a11y / 性能 / 内存 等    │
│ 适合探索性调试   │ 适合 CI/CD 管道 │ 适合专业领域自动化        │
└─────────────────┴────────────────┴──────────────────────────┘
```

## 代理集成

| 代理平台 | 安装方式 |
|----------|----------|
| **Claude Code** | `/plugin marketplace add ChromeDevTools/chrome-devtools-mcp` → `/plugin install chrome-devtools-mcp@chrome-devtools-plugins` |
| **Gemini CLI** | `gemini extensions install --auto-update https://github.com/ChromeDevTools/chrome-devtools-mcp` |
| **Antigravity** | 内置 `浏览器子代理`，斜杠命令 `/browser Navigate to ...` |

## 属性

| 项目 | 值 |
|------|-----|
| 🏢 发布方 | Google Chrome DevTools Team |
| 📅 发布日 | 2026-05-19 |
| 📄 类型 | 官方发布博客 / 平台服务 |
| 🔧 核心组件 | MCP Server + CLI + Agent Skills |
| 📦 安装 | `npm` / 代理插件市场 |
| 🌐 协议 | MCP (Model Context Protocol) |
| 📖 文档 | [docs.chrome.com/devtools/agents](https://developer.chrome.com/docs/devtools/agents?hl=zh-cn) |
| 🐙 GitHub | [ChromeDevTools/chrome-devtools-mcp](https://github.com/ChromeDevTools/chrome-devtools-mcp) |

## 适用场景

| 场景 | 说明 |
|------|------|
| **AI 编码协助** | 代理自动调试生成的 Web 代码，实时验证输出 |
| **CI/CD 质量门禁** | CLI 集成流水线，自动 Lighthouse 审核 |
| **自动化测试** | 模拟设备/网络/地理位置，覆盖多环境 |
| **性能优化** | 代理自动检测内存泄漏、LCP 优化 |
| **辅助功能审核** | 代理运行 a11y 审计并修复问题 |

## cc-undo 跟踪方向

- [ ] 集成到 cc-undo 的 `chrome-devtools-mcp` Skill，作为浏览器调试后盾
- [ ] 研究 MCP Server + Agent Skills 双通道的协作模式（与现有 `webwright`/`web-access` 对比）
- [ ] 评估 auto-connect 会话移交在本地开发工作流中的价值
- [ ] 跟踪第三方开发者工具 API，看能否暴露 cc-undo 内部状态给代理

## 原文全文

原文完整内容见 [chrome-devtools-agents-references/original-article.md](chrome-devtools-agents-references/original-article.md)。

---

> 原文：[Streamline your AI coding workflow with Chrome DevTools for agents 1.0](https://developer.chrome.com/blog/devtools-for-agents-v1?hl=zh-cn) | 版权：© Google LLC，[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
