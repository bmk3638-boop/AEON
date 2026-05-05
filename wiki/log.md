---
type: meta
title: "Wiki 운영 로그"
---

# Wiki 운영 로그

> 최신 항목이 맨 위. 절대 과거 항목 수정 금지.

---

## 2026-05-05 — Wiki 초기 Scaffold

- **작업**: AEON 볼트에 wiki/ 구조 최초 생성
- **모드**: Mode C (Business) + Mode D (Second Brain) 하이브리드
- **생성 파일**: overview.md, hot.md, log.md, index.md, entities/, concepts/, domains/, decisions/
- **배경**: /wiki 스킬 호출로 트리거됨
- **다음**: /autoresearch, /wiki-ingest 작업 예정

---

## 2026-05-05 — hr-tools-web 세션

- **작업**: 회원가입 다중사용자 연동, 대시보드 신설, bcrypt 버그 수정
- **주요 결정**: passlib 제거 → 직접 bcrypt 사용 (멈춤 버그 해결)
- **주요 결정**: VITE_API_URL=http://localhost:8010 (포트 불일치 수정)
- **산출물**: Dashboard.jsx (6개 직무섹터), 회원가입 사람인 연동 폼
