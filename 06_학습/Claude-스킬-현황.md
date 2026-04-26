---
title: Claude 스킬 현황
type: 학습-레퍼런스
tags: [claude-code, 스킬, 무기, AI에이전트]
created: 2026-04-25
---

> Claude(AGT-00)가 현재 장착하고 있는 스킬 목록.
> 스킬 = Claude가 특정 분야에서 판단·출력하는 방식을 바꾸는 학습된 능력.

---

## taste-skill — 디자인 감각

- **출처**: github.com/Leonxlnx/taste-skill
- **설치**: `npx skills add --yes leonxlnx/taste-skill`

| 스킬명 | 기능 |
| --- | --- |
| `design-taste-frontend` | 고급 프론트엔드 디자인 감각 주입 |
| `full-output-enforcement` | 코드 중간 생략 없이 전체 출력 |
| `gpt-taste` | GPT-4o 수준 디자인 판단력 |
| `high-end-visual-design` | 고급 시각 디자인 원칙 적용 |
| `image-to-code` | 이미지 → 코드 변환 |
| `industrial-brutalist-ui` | 산업적 브루탈리스트 UI 스타일 |
| `minimalist-ui` | 미니멀 UI 설계 원칙 |
| `redesign-existing-projects` | 기존 프로젝트 UI 개선 |
| `stitch-design-taste` | Stitch 스타일 디자인 감각 |

**AEON 활용**: dashboard.html 디자인, 고객사 납품 UI 품질 향상

---

## UI/UX Pro Max — 디자인 데이터 팩

- **출처**: obra/superpowers-marketplace (uipro-cli)
- **설치**: `uipro init`

색상 팔레트, 차트 스타일, 폰트 조합, 기술스택 CSV 데이터를 내장.
대시보드·UI 생성 시 자동 참조해서 일관된 고품질 디자인 출력.

**AEON 활용**: HR 대시보드 HTML 자동 생성 품질 향상

---

## claude-obsidian-marketplace — Obsidian 연동 스킬

- **출처**: github.com/AgriciDaniel/claude-obsidian
- **마켓플레이스 등록**: `~/.claude/settings.json`의 `extraKnownMarketplaces`

| 스킬명 | 기능 |
| --- | --- |
| `autoresearch` | 자동 리서치 결과 Obsidian에 저장 |
| `canvas` | Obsidian 캔버스(아이디어맵) 생성 |
| `defuddle` | 웹 콘텐츠 정제 후 노트화 |
| `obsidian-bases` | Obsidian Bases DB 쿼리 |
| `obsidian-markdown` | 볼트 규칙에 맞는 Markdown 생성 |
| `save` | 웹 페이지 → Obsidian 노트 저장 |
| `wiki` | 위키 스타일 문서 자동 생성 |

**AEON 활용**: 리서치 자동화, 볼트 문서 품질 관리

---

## Karpathy 원칙 — 코딩 철학

- **출처**: github.com/forrestchang/andrej-karpathy-skills
- **적용 위치**: `C:\Users\bmk36\Projects\saramin-automation\CLAUDE.md`

| 원칙 | 내용 |
| --- | --- |
| Think first | 코딩 전 먼저 생각하고 설계 |
| Minimal scope | 요청한 것만 구현, 범위 초과 금지 |
| Surgical edit | 필요한 부분만 수정 |
| Verifiable goal | 검증 가능한 목표 설정 |

**AEON 활용**: 모든 코드 작업의 기본 철학으로 적용

---

## MCP 서버 — 도구 확장

> MCP(Model Context Protocol): Claude가 외부 시스템을 직접 제어할 수 있게 해주는 연결 레이어

| MCP 서버 | 기능 | 상태 |
| --- | --- | --- |
| Playwright MCP | 브라우저 직접 제어 (로그인·클릭·스크래핑) | ✅ 연결됨 |
| Filesystem MCP | 지정 폴더 파일 읽기/쓰기 | ✅ 연결됨 |
| Obsidian MCP | Obsidian REST API 통해 노트 관리 | ✅ 연결됨 |

**연결 방법**: `/mcp` 명령 → Add Server로 직접 등록 (settings.json mcpServers는 VSCode 익스텐션에서 무시됨)
**연결 일시**: 2026-04-26

**접근 허용 경로**:

- `C:\Users\bmk36\Projects`
- `C:\Users\bmk36\OneDrive\바탕 화면\Obsidian\AEON`
- `C:\Users\bmk36\OneDrive\바탕 화면\사람인_이력서`

## Auto-accept 상태

| 설정 | 값 | 실제 효과 |
| --- | --- | --- |
| `defaultMode: bypassPermissions` | settings.json에 있음 | ❌ VSCode 익스텐션에서 미작동 |
| `allow` 배열 | 허용 명령어 누적 추가 중 | ✅ 이 방식이 실제 작동하는 유일한 방법 |

---

*관련: [[06_학습/GitHub레포-평가결과]] | [[02_솔루션/HR자동화모듈/claude-code-무기설정]] | [[00_사업/AI에이전트-조직도]]*
*마지막 업데이트: 2026-04-25*
