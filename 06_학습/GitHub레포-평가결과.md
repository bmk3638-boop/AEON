---
title: GitHub 레포 평가 결과
type: 학습-레퍼런스
tags: [GitHub, 도구평가, 기술스택]
created: 2026-04-25
---

> 배명규 대표가 검토 요청한 레포들 평가 결과. AEON 현재 단계 기준으로 분류.

---

## 즉시 설치 가능 (스킬팩)

### gstack ⭐ 핵심 추천
- **GitHub**: github.com/garrytan/gstack
- **제작자**: Garry Tan (Y Combinator CEO)
- **분류**: Claude Code용 팀 역할 자동화 스킬팩 (23개 도구)
- **핵심 기능**:
  - `/office-hours` — CEO 역할로 전략 검토
  - `/review` — 엔지니어링 매니저 역할로 아키텍처 검증
  - `/qa` — QA 리더 역할로 브라우저 테스트 자동화 (Playwright)
  - `/ship` — 배포 전 전체 체크리스트 실행
  - 디자이너·보안 담당자 역할도 포함
- **기술스택**: TypeScript, Bun, Playwright, Supabase
- **AEON 활용**: AGT-22(QA), AGT-23(보안), AGT-03(기술부장) 역할과 직접 연결됨
- **조치**: 설치 검토 → `npx skills add garrytan/gstack`

---

## 즉시 활용 가능 (참고자료)

### awesome-copilot
- **GitHub**: github.com/github/awesome-copilot
- **분류**: GitHub Copilot 프롬프트·지침 모음
- **활용**: Claude Code 프롬프트 작성 참고, CLAUDE.md 개선 아이디어 발굴
- **조치**: 참고자료로 보관

### nodebestpractices
- **GitHub**: github.com/goldbergyoni/nodebestpractices
- **분류**: Node.js 개발 베스트 프랙티스 가이드 (100개+)
- **활용**: VoltAgent SaaS 개발 시 코드 품질 기준으로 활용
- **조치**: 참고자료로 보관

---

## 즉시 활용 가능 (도구)

### prettier
- **GitHub**: github.com/prettier/prettier
- **분류**: 코드 자동 포매터 (JS/TS/HTML/CSS/JSON)
- **활용**: dashboard.html, pipeline.py 주변 JS 코드 정리
- **설치**: `npm install -g prettier`
- **조치**: 필요 시 설치

### typos
- **GitHub**: github.com/crate-ci/typos
- **분류**: 오타 검사기 (Rust 기반, 빠름)
- **활용**: Obsidian 문서, 코드 주석 오타 검사
- **설치**: `cargo install typos-cli` (Rust 필요)
- **조치**: 필요 시 설치

### material-design-icons
- **GitHub**: github.com/google/material-design-icons
- **분류**: Google Material Design 아이콘 세트
- **활용**: dashboard.html 아이콘 — CDN으로 바로 사용 가능
- **사용법**: `<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">`
- **조치**: 다음 대시보드 개선 시 적용

---

## 미래 기술 스택 → [[06_학습/미래기술스택-후보]]

### bun
- **GitHub**: github.com/oven-sh/bun
- **분류**: All-in-one JS 런타임 (Node.js 대체, 3~4배 빠름)
- **사용 타이밍**: VoltAgent SaaS 전환 시

### sourcegraph
- **GitHub**: github.com/sourcegraph/sourcegraph
- **분류**: 코드 인텔리전스 플랫폼
- **사용 타이밍**: 개발팀 5인 이상 시

---

## 스킵 (AEON 방향과 맞지 않음)

| 레포 | 이유 |
| --- | --- |
| quokka | VS Code JS playground — 프론트 개발팀 전용, 지금 불필요 |
| material-icon-theme | VS Code 테마 전용 — 에디터 꾸미기용, 사업과 무관 |
| meteor | 풀스택 JS 프레임워크 — AEON 기술 방향(Python+VoltAgent)과 다름 |

---

*관련: [[06_학습/미래기술스택-후보]] | [[02_솔루션/HR자동화모듈/claude-code-무기설정]]*
*마지막 업데이트: 2026-04-25*
