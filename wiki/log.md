---

## [2026-05-05] fix | 확보관리 파이프라인 복구 2026-05-05
- Type: session
- Location: wiki/meta/확보관리 파이프라인 복구 2026-05-05.md
- From: 확보관리 자동화 프로세스·OCR·신규입사등록 UI 복구와 사람인 인증번호 반복 팝업 수정

---

## [2026-05-05] save | 디자인 시스템 통일 2026-05-05
- Type: session
- Location: wiki/meta/디자인 시스템 통일 2026-05-05.md
- From: 60:30:10 팔레트 통일, 외부 회사명 제거, HRM 6영역과 법률 체크 설명 보강

---

## [2026-05-05] save | HR Tools 작업 인수인계 2026-05-05
- Type: session
- Location: wiki/meta/HR Tools 작업 인수인계 2026-05-05.md
- From: hr-tools-web 실행 구조, 포트 불일치, Obsidian vault 협업 기준 정리

---

## [2026-05-05] save | HR Tools 홈 리서치 기반 개편 2026-05-05
- Type: session
- Location: wiki/meta/HR Tools 홈 리서치 기반 개편 2026-05-05.md
- From: Mercer, IBM, Gallup 리서치 기반 홈 개편과 Figma 기능맵 생성

---

## [2026-05-05] decision | HRM 기능영역 재배치 2026-05-05
- Type: decision
- Location: wiki/meta/HRM 기능영역 재배치 2026-05-05.md
- From: Mercer/IBM/Gallup 기능을 채용이 아니라 개발관리·유지관리·운영 레이어로 재배치

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
