# headroom

Compress tool outputs, logs, files, and RAG chunks before they reach the LLM —— 60-95% fewer tokens, same answers.

```
Tool输出/日志/文件/RAG ─▶ [Headroom Compression Engine] ─▶ 精简后的 LLM 上下文
                           ├── Library API   (Python / TypeScript)
                           ├── Proxy Server  (透明压缩，无侵入接入)
                           └── MCP Server    (Claude / Cursor 原生集成)
```

| 属性 | 值 |
|------|-----|
| 作者 | @chopratejas |
| 协议 | Apache-2.0 |
| 语言 | Python |
| ⭐ | ~10.5k |
| 核心能力 | LLM 上下文压缩（60-95% token 缩减） |
| 亮点 | 三种集成模式 + 保持语义完整性 + 多格式支持 |

## 核心链路

```
 ┌──────────────┐    ┌──────────────────┐    ┌──────────────────┐
 │  输入源       │    │  Headroom 压缩     │    │  输出目标        │
 │──────────────│    │──────────────────│    │──────────────────│
 │ · CLI 输出    │───▶│ · 语义压缩        │───▶│ · Claude Code    │
 │ · 日志文件    │    │ · Token 统计       │    │ · 任何 LLM       │
 │ · 代码片段    │    │ · 格式感知        │    │ · RAG 管道       │
 │ · RAG Chunks │    │ · 多语言支持      │    │ · API 代理        │
 │ · 任意文本    │    │ · Proxy / MCP     │    │                  │
 └──────────────┘    └──────────────────┘    └──────────────────┘
         60-95% token 缩减 · 相同回答质量
```

## 集成方式

| 模式 | 接入方式 | 场景 |
|------|---------|------|
| **Library** | `pip install headroom` / `npm install headroom` | 代码中直接调用压缩 |
| **Proxy** | 启动代理服务，转发 LLM 请求 | 无侵入式透明压缩 |
| **MCP Server** | 配置 MCP 客户端连接 | Claude Desktop / Cursor 原生集成 |

## 适用场景

- **Claude Code 用户**：压缩 tool output / 日志，省 token 省费用
- **RAG 管道**：压缩检索到的文档块，在保持语义下缩减输入
- **长上下文处理**：对话历史 / 日志分析时大幅降低 token 消耗
- **代理部署**：在 LLM API 前面加代理层，自动压缩所有请求

## cc-undo 跟踪方向

- 与 Claude Code 集成测试：在 tool output 量大的场景下实测压缩率
- MCP Server 配置方式：引入到 skill 的工作流中

---

[→ GitHub](https://github.com/chopratejas/headroom) · [→ 文档](https://headroom-docs.vercel.app/docs) · [→ Trending #1 2026-06-04](https://github.com/trending)
