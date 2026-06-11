# 原文备份：Chrome DevTools for Agents 1.0

> **原文标题：** Streamline your AI coding workflow with Chrome DevTools for agents 1.0
> **原文链接：** https://developer.chrome.com/blog/devtools-for-agents-v1?hl=zh-cn
> **原文作者：** José Luis Zapata
> **发布日期：** 2026-05-19
> **版权声明：** 原文版权 © Google LLC，本副本仅作本地查阅备份。
> **许可协议：** [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)

---

```text
利用 Chrome 开发者工具（适用于智能体 1.0）简化 AI 编码工作流程

Streamline your AI coding workflow with Chrome DevTools for agents 1.0

AI 编码工具在编写代码方面非常强大，但往往与代码执行脱节。它们可以生成复杂的 Web 应用，
但无法在实时浏览器中观察其行为或检查其输出。

适用于智能体的 Chrome 开发者工具为您的编码智能体提供了实时验证、调试和优化代码所需的可见性。
几个月前，我们首次展示了该工具，现在很高兴地宣布，面向代理的 Chrome 开发者工具现已作为稳定版
1.0 发布。

将智能体连接到浏览器

借助适用于代理的 Chrome 开发者工具，您的代理可以像真实用户一样体验您的网站。此稳定版包含多种
方式，可供您和您的代理与 Chrome 进行交互：

- Model Context Protocol (MCP) 服务器：一种将大语言模型 (LLM) 连接到开发者工具调试功能的服务器。
- 命令行界面 (CLI)：一种节省令牌的替代方案，可让代理将操作批量处理到脚本中。
- 代理技能：专家级指令，用于教导代理如何以及何时使用特定工具来执行无障碍功能或性能调试等任务。

自动调试、模拟和审核

在 1.0 版中，编码智能体现在可以执行之前需要手动完成的高级调试任务。

自动执行质量审核

您的代理现在可以运行 Lighthouse 审核来评估网站质量。它可以识别无障碍功能、SEO、最佳实践和
智能浏览方面的问题。这就像拥有一个了解运行时的 lint 工具。作为质量关口，它可将您的编码代理
变成专家，在关键阻碍因素到达生产环境之前将其捕获。

模拟真实的用户体验

客服人员可以使用面向客服人员的开发者工具，通过模拟工具测试网站在各种设备上或不同位置的显示效果
和性能。它可以调整窗口大小、模拟地理位置，并限制网络和 CPU 速度以模拟真实环境。这样一来，
您的代理就可以测试移动设备专用的行为（例如汉堡菜单），而无需您手动调整浏览器大小。

开发和调试 Chrome 扩展程序

您还可以让代理不仅帮助您开发 Chrome 扩展程序，还帮助您调试它们。您的代理可以直接安装、重新加载
和触发扩展程序操作。这有助于在开发期间自动执行频繁的"保存并刷新"周期。它还可以深入了解后台
脚本和扩展程序页面，帮助您修复更复杂的浏览器设置中的 bug。

调试和测试 WebMCP 工具

我们还推出了 WebMCP（Web Model Context Protocol）源试用，以便您深入了解并实现这一新 API。

智能体无需依赖信号来推断浏览 DOM 的方案，而是可以直接与您使用 WebMCP 公开的结构化工具互动。
这样一来，您就可以更轻松地开发、测试和调试这些工具：您的代理可以在实时环境中列出这些工具、
以编程方式调用这些工具，并验证其正确性。这简化了向您的网站添加 WebMCP 支持并对其进行测试
的过程。

检测和调试内存泄漏问题

我们还添加了用于内存分析的专用工具。您的代理现在可以拍摄堆快照，以识别内存泄漏（例如分离的
DOM 节点）。通过使用专业的内存泄漏调试技能，该智能体可充当性能专家，帮助您保持应用精简快速。

通过自动连接功能移交会话

您可以与代理共享当前浏览器上下文，而不是让代理打开自己的沙盒浏览器实例（这是代理开发者工具
通常为代理提供浏览器访问权限的方式）。这非常适合调试需要登录才能访问的内容，例如需要进行
身份验证的控制台。在这种情况下，您希望 AI 智能体接管技术调查，而无需重新对所有内容进行身份
验证。

使用第三方开发者工具公开内部状态

借助第三方开发者工具，您的 Web 应用可以直接与 AI 智能体分享内部状态和组件详细信息。这些工具
可让代理访问通常隐藏在标准分析中的数据，从而为代理提供了解复杂逻辑所需的背景信息。这样一来，
调试建议会更加准确，因为它们是根据应用在浏览器中的实际行为生成的。

开始使用

您可以使用 npm 安装稳定版，也可以直接在所选代理中进行配置：

Antigravity

代理专用 Chrome 开发者工具与 Antigravity 2.0 预先捆绑在一起。您可以使用浏览器子代理立即开始
使用它。尝试使用斜杠命令，例如：

  /browser Navigate to the Google homepage

如需使用专业代理技能，我们建议您在初始设置的 Build with Google 步骤中或在应用设置中安装
开发者工具插件。如需了解详情，请参阅 Antigravity 浏览器子代理文档。

Gemini CLI

如需将 MCP 软件包和技能作为扩展程序进行安装，请使用以下命令：

  $ gemini extensions install --auto-update https://github.com/ChromeDevTools/chrome-devtools-mcp

Claude Code

如需将 Chrome 开发者工具作为 Claude Code 插件安装到代理中，请在 Claude Code 中使用以下斜杠
命令。添加 Marketplace 注册表：

  /plugin marketplace add ChromeDevTools/chrome-devtools-mcp

并从 Marketplace 注册表安装插件：

  /plugin install chrome-devtools-mcp@chrome-devtools-plugins

如需查看更详细的指南和提示示例，请参阅我们的面向代理的 Chrome 开发者工具文档。您还可以浏览
GitHub 上的源代码。
```
