# Claude Code Essential Agents

> 10 個必備 Claude Code 自訂 Agent 配置 —— 複製到 `.claude/agents/` 即可使用。附模型成本優化指南。

## 10 大 Agent 一覽

```
┌────────────┬──────────┬──────────────┬────────────────────────────────┐
│ Agent      │ 模型      │ 工具集        │ 核心用途                       │
├────────────┼──────────┼──────────────┼────────────────────────────────┤
│ Code       │ Sonnet   │ R+G+Gl+B     │ 程式碼品質、安全性、可維護性審查  │
│ Reviewer   │          │              │                                │
├────────────┼──────────┼──────────────┼────────────────────────────────┤
│ Debugger   │ Sonnet   │ R+G+Gl+B+E   │ 分析錯誤、追蹤根本原因           │
├────────────┼──────────┼──────────────┼────────────────────────────────┤
│ Test       │ Sonnet   │ R+W+G+Gl+B   │ 為現有程式碼撰寫完整測試         │
│ Writer     │          │              │                                │
├────────────┼──────────┼──────────────┼────────────────────────────────┤
│ Security   │ Sonnet   │ R+G+Gl+B     │ OWASP Top 10 漏洞、敏感資訊檢查  │
│ Auditor    │          │              │                                │
├────────────┼──────────┼──────────────┼────────────────────────────────┤
│ Doc        │ Haiku    │ R+W+G+Gl     │ README / API 文件 / 程式碼注釋  │
│ Writer     │          │              │                                │
├────────────┼──────────┼──────────────┼────────────────────────────────┤
│ Git        │ Haiku    │ B+R+G        │ 版本控制、分支管理、衝突解決     │
│ Expert     │          │              │                                │
├────────────┼──────────┼──────────────┼────────────────────────────────┤
│ API        │ Sonnet   │ R+W+G        │ RESTful 設計、OpenAPI 規格      │
│ Designer   │          │              │                                │
├────────────┼──────────┼──────────────┼────────────────────────────────┤
│ Perf       │ Sonnet   │ R+G+Gl+B     │ N+1 查詢、記憶體、前端/後端優化  │
│ Optimizer  │          │              │                                │
├────────────┼──────────┼──────────────┼────────────────────────────────┤
│ Database   │ Sonnet   │ R+W+G+B      │ Schema 設計、SQL 查詢、Migration│
│ Expert     │          │              │                                │
├────────────┼──────────┼──────────────┼────────────────────────────────┤
│ Refactor   │ Sonnet   │ R+E+G+Gl+B   │ 改善結構、降低複雜度、消除壞味道 │
│ Assistant  │          │              │                                │
└────────────┴──────────┴──────────────┴────────────────────────────────┘

  R=Read  W=Write  G=Grep  Gl=Glob  B=Bash  E=Edit
```

## 部署流程

```
  下載配置 ──▶  建立 .claude/agents/ 目錄
                    │
               ┌────▼────┐
               │ 寫入 .md │
               │ 檔案     │── 每個 Agent 一個 .md 檔案
               └────┬────┘
                    │
               ┌────▼────┐
               │ 重啟     │── 重新啟動 Claude Code 以載入新 Agent
               │ Claude   │
               └────┬────┘
                    │
               ┌────▼──────────┐
               │ 自動或手動呼叫  │── Claude 自動匹配，或「使用 XXX agent」
               └───────────────┘
```

## 各 Agent 詳解

### 1. Code Reviewer（程式碼審查）
- **檔案**：`.claude/agents/code-reviewer.md`
- **啟用詞**：「review code」「code review」「PR review」
- **檢查維度**：命名清晰度、函數長度、重複代碼、錯誤處理、SQL 注入/XSS、敏感資訊洩露、專案風格一致性

### 2. Debugger（除錯專家）
- **檔案**：`.claude/agents/debugger.md`
- **啟用詞**：「debug」「error」「bug」
- **分析流程**：理解錯誤訊息 → 定位問題位置 → 追溯根本原因 → 提供修復建議
- **常見模式**：Null/undefined 錯誤、型別錯誤、Async/Promise 錯誤、環境變數配置

### 3. Test Writer（測試撰寫）
- **檔案**：`.claude/agents/test-writer.md`
- **啟用詞**：「write tests」「add tests」「test coverage」
- **原則**：AAA 模式(Arrange-Act-Assert)、單一測試只測一件事、命名描述預期行為

### 4. Security Auditor（資安稽核）
- **檔案**：`.claude/agents/security-auditor.md`
- **啟用詞**：「security audit」「security check」
- **範圍**：OWASP Top 10、輸入驗證/輸出編碼、敏感資料模式（API Key / Password / Token）

### 5. Doc Writer（文件撰寫）
- **檔案**：`.claude/agents/doc-writer.md`
- **啟用詞**：「write docs」「documentation」「README」
- **適用**：README.md（快速入門/安裝/使用範例）、API 文件（端點/參數/錯誤碼）、程式碼注釋（只注 why 不注 what）

### 6. Git Expert（Git 專家）
- **檔案**：`.claude/agents/git-expert.md`
- **啟用詞**：「git」「commit」「merge conflict」
- **能力**：功能分支、Conventional Commits、合併/Rebase、衝突解決
- **安全規則**：❌ 禁止 `push --force` 到 main/master、❌ 禁止未經確認的 `reset --hard`

### 7. API Designer（API 設計）
- **檔案**：`.claude/agents/api-designer.md`
- **啟用詞**：「design API」「REST API」「OpenAPI」
- **遵循**：RESTful 命名規範（名詞資源）、HTTP 方法語義、狀態碼、OpenAPI 3.0 規格輸出

### 8. Performance Optimizer（效能優化）
- **檔案**：`.claude/agents/performance-optimizer.md`
- **啟用詞**：「performance」「optimize」「slow」
- **分析**：N+1 查詢、索引缺失、記憶體洩漏、前端打包/圖片/懶加載、後端快取/連線池

### 9. Database Expert（資料庫專家）
- **檔案**：`.claude/agents/database-expert.md`
- **啟用詞**：「database」「SQL」「migration」
- **範圍**：正規化/反正規化設計、索引策略、EXPLAIN 分析、Migration 最佳實踐（單一變更/可回滾/備份）

### 10. Refactor Assistant（重構助手）
- **檔案**：`.claude/agents/refactor-assistant.md`
- **啟用詞**：「refactor」「clean up」「improve code」
- **原則**：小步驟變更、測試保護、行為不變
- **程式碼壞味道**：超過 50 行的函數、超過 4 個參數、重複代碼、嵌套超過 3 層、魔術數字

## 成本優化策略

| 任務層級 | 建議模型 | 費用倍率 | 適用場景 |
|----------|----------|---------|----------|
| 🟢 輕量 | Haiku 4.5 | 1x | 檔案搜尋、文件撰寫、Git 操作 |
| 🟡 核心 | Sonnet 4.5 | 3x | 程式碼審查、除錯、資安稽核、重構 |
| 🔴 關鍵 | Opus 4.5 | 15x | 重大架構決策（按需啟用） |

## cc-undo 跟蹤方向

- 與 cc-undo 自身 `.claude/agents/` 目錄的整合 —— 直接套用這些 Agent 配置到本專案
- 觀察各 Agent 在實際 cc-undo 開發中的效果，篩選出最高頻使用的 Agent 組合
- Agent 配置與 Skill 的協作模式（Agent 負責特定任務，Skill 負責多步驟工作流）
- 模型成本追蹤 —— 記錄 Haiku/Sonnet/Opus 在 cc-undo 各類任務中的實際費用

## 原文連結

[→ Claude World: 10 個必備 Claude Code 自訂 Agent：複製即可使用](https://claude-world.com/zh-tw/articles/claude-code-essential-agents/)

> 原文備份：`docs/claude-code-essential-agents-references/original-article.md`
> 版權所有 © Claude World，備份僅供本地查閱
