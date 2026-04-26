---
title: Claude Code 무기 설정 현황
type: 개발로그
tags: [claude-code, MCP, 스킬, 설정]
created: 2026-04-25
---

# Claude Code 무기 설정

## 적용된 것들

### 1. Karpathy 원칙 — CLAUDE.md
`C:\Users\bmk36\Projects\saramin-automation\CLAUDE.md` 생성
- 코딩 전 먼저 생각하기
- 요청한 것만 구현
- 필요한 부분만 수정
- 검증 가능한 목표 설정

### 2. MCP 서버 (settings.json에 추가됨)

#### Playwright MCP
- 패키지: `@executeautomation/playwright-mcp-server`
- 용도: 브라우저 직접 제어 (Selenium 대체 가능)
- 효과: 사람인 로그인 자동화 더 안정적으로 가능

#### Filesystem MCP
- 패키지: `@modelcontextprotocol/server-filesystem`
- 접근 허용 경로:
  - `C:\Users\bmk36\Projects`
  - `C:\Users\bmk36\OneDrive\바탕 화면\Obsidian\AEON`
  - `C:\Users\bmk36\OneDrive\바탕 화면\사람인_이력서`

## 다음 단계 (설치 필요)

### Obsidian MCP (직접 읽기/쓰기)
Obsidian에서 플러그인 설치 필요:
1. Obsidian → 설정 → 커뮤니티 플러그인 → `Local REST API` 검색 후 설치
2. 플러그인 설정에서 API Key 복사
3. Claude Code settings.json에 추가:
```json
"obsidian": {
  "command": "npx",
  "args": ["-y", "mcp-obsidian"],
  "env": {
    "OBSIDIAN_API_KEY": "여기에_API_KEY",
    "OBSIDIAN_HOST": "localhost",
    "OBSIDIAN_PORT": "27123"
  }
}
```

---
*관련: [[02_솔루션/HR자동화모듈/02-사람인-자동화-개발로그]]*
