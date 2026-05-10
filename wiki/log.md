---

## [2026-05-09] feature | AEON HR Full HRM Operating System 반영
- Type: session
- Location: wiki/meta/HR Tools 확보관리 IA 정리 2026-05-09.md
- From: AEON_HR_Full_HRM_Operating_System.md 기준으로 HR OS Overview, 6대 모듈, HR Analytics, Compliance Center route와 근로계약서 자동발송 통제 기능 구현

---

## [2026-05-09] fix | HR Tools 확보관리 UI 패턴 통일
- Type: session
- Location: wiki/meta/HR Tools 확보관리 IA 정리 2026-05-09.md
- From: 모집관리의 왼쪽 업무 메뉴 + 오른쪽 작업 패널 구조를 인력계획, 평가기준, 후보자관리, 면접관리, 선발·처우, 입사·OCR에 확장 적용

---

## [2026-05-09] fix | HR Tools 부서별 평가기준 자동화 연결
- Type: session
- Location: wiki/meta/HR Tools 확보관리 IA 정리 2026-05-09.md
- From: 평가기준을 부서별로 관리하고, 공고 오픈·이력서 수집·AI 이력서 파싱·모집통계·확보현황 대시보드가 같은 부서 기준을 참조하도록 구현

---

## [2026-05-09] fix | HR Tools 확보관리 IA 정리 2026-05-09
- Type: session
- Location: wiki/meta/HR Tools 확보관리 IA 정리 2026-05-09.md
- From: 확보관리 경로를 /acquisition 하위로 통일, 모집관리 중분류·소분류·세분류 재배치, 빈 화면 redirect 처리, 사이드바와 검색 일관화

---

## [2026-05-09] fix | HR Tools 확보관리 사용성 개선 2026-05-09
- Type: session
- Location: wiki/meta/HR Tools 확보관리 사용성 개선 2026-05-09.md
- From: git pull 이후 HR 컨설턴트 기준으로 Acquisition OS 데모 상태 저장, 업무 버튼 동작, Vite 프록시 8000 정정, Obsidian 실제 볼트 최신화

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
