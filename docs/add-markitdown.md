# MarkItDown — Microsoft 文档转 Markdown 工具

> Python tool for converting files and office documents to Markdown。专为 LLM 数据管道设计，一行命令把 PDF、Word、PPT、Excel 全转成 AI 看得懂的格式。

```
                           ┌──────────────────┐
                           │   输入文档         │
                           │ PDF / DOCX / PPTX  │
                           │ XLSX / HTML / CSV  │
                           │ EPUB / ZIP / XML   │
                           │ 图片 / 音频 / RSS  │
                           └────────┬─────────┘
                                    │
                           ┌────────▼─────────┐
                           │   MarkItDown      │
                           │   (Python 引擎)    │
                           │                   │
                           │  ┌─────────────┐  │
                           │  │ 解析器插件链   │  │
                           │  │ PDF→文本      │  │
                           │  │ DOCX→结构     │  │
                           │  │ PPTX→幻灯片   │  │
                           │  │ HTML→语义     │  │
                           │  │ 图片→OCR/描述 │  │
                           │  └─────────────┘  │
                           │                   │
                           │  ┌─────────────┐  │
                           │  │ LLM 增强     │  │
                           │  │ GPT-4o 描述  │  │
                           │  │ Azure AI 增强│  │
                           │  └─────────────┘  │
                           └────────┬─────────┘
                                    │
                           ┌────────▼─────────┐
                           │  输出 Markdown    │
                           │   结构保留       │
                           │   标题 / 列表     │
                           │   表格 / 链接     │
                           └──────────────────┘
```

## 属性

| 项目 | 内容 |
|------|------|
| **作者** | Microsoft |
| **协议** | MIT |
| **语言** | Python 3.10+ |
| **⭐ Stars** | ~124k |
| **核心能力** | 将 15+ 种文件格式转为结构保留的 Markdown |
| **亮点** | MCP Server 支持 / 插件系统 / Azure AI 集成 / Docker 部署 |

## 支持的格式

| 类别 | 格式 |
|------|------|
| 办公文档 | PDF, DOCX, PPTX, XLSX/XLS |
| Web | HTML, YouTube URL, EPUB |
| 数据 | CSV, JSON, XML, ZIP（遍历内容） |
| 媒体 | 图片（EXIF+OCR）, 音频（转写） |
| 其他 | Outlook 邮件, RSS 订阅 |

## 安装与使用

```bash
# 全量安装
pip install 'markitdown[all]'

# 按需安装
pip install 'markitdown[pdf,docx,pptx]'
```

**命令行：**
```bash
markitdown document.pdf > output.md
markitdown document.pdf -o output.md
cat document.pdf | markitdown
```

**Python API：**
```python
from markitdown import MarkItDown

md = MarkItDown()
result = md.convert("report.docx")
print(result.text_content)
```

**配合 LLM 描述图片：**
```python
from markitdown import MarkItDown
from openai import OpenAI

client = OpenAI()
md = MarkItDown(llm_client=client, llm_model="gpt-4o")
result = md.convert("photo.jpg")
print(result.text_content)
```

## cc-undo 跟踪方向

1. **LLM 数据管道预处理** — 将异构文档标准化为 Markdown 输入 RAG/微调流程
2. **MCP Server 集成** — 作为 MCP 工具供 Claude 等 AI 直接调用读取文档
3. **Azure AI 增强管道** — 结合 Azure Document Intelligence 实现高精度文档解析
4. **插件生态** — 关注第三方插件系统，可扩展至更多文档格式

## 链接

- [GitHub](https://github.com/microsoft/markitdown)
- [PyPI](https://pypi.org/project/markitdown/)
