---
type: meta
title: "HR Tools 확보관리 IA 정리 2026-05-09"
created: 2026-05-09
updated: 2026-05-09
tags:
  - hr-tools-web
  - 확보관리
  - IA
  - 라우팅
related:
  - "[[entities/hr-tools-web]]"
  - "[[meta/HR Tools 확보관리 사용성 개선 2026-05-09]]"
---

# HR Tools 확보관리 IA 정리 2026-05-09

## 결정

확보관리의 실제 업무 경로를 `/acquisition/...` 하위로 통일한다. 예전 주소는 삭제하지 않고 redirect만 유지해서 기존 링크가 빈 화면으로 떨어지지 않게 한다.

2026-05-09 추가 결정: `평가기준`은 `모집관리`보다 먼저 배치한다. 채용공고 작성, 이력서 파싱, 후보자 판정, 면접평가가 모두 동일한 기준을 참조해야 하므로, 평가서는 모집 이후가 아니라 모집 전에 기준이 확정되어야 한다.

2026-05-09 추가 결정: 평가기준은 전사 공통 1개가 아니라 `부서별 기준`으로 관리한다. 품질팀, 생산팀, 설비팀처럼 부서마다 필수요건·우대요건·최소경력·AI 가중치가 다르므로, 모집관리의 공고 오픈, 이력서 파싱, 모집통계 대시보드는 모두 해당 부서의 기준을 참조해야 한다.

## Canonical routes

| 대분류 | 중분류 | 소분류 | 세분류 | 경로 |
|---|---|---|---|---|
| 확보관리 | 확보현황 | 전체 파이프라인 | - | `/acquisition` |
| 확보관리 | 인력계획 | 정원·수요 산정 | 채용의뢰서 | `/acquisition/workforce` |
| 확보관리 | 평가기준 | 직무·역량 기준 | 구조화 면접·AI 가중치 | `/acquisition/evaluation` |
| 확보관리 | 모집관리 | 채용공고관리 | 홍보채널 | `/acquisition/recruiting/promotion-channels` |
| 확보관리 | 모집관리 | 채용공고관리 | 채용공고 관리 | `/acquisition/recruiting/job-postings` |
| 확보관리 | 모집관리 | AI 이력서 파싱·수집 | 공고 스캔 | `/acquisition/recruiting/scan` |
| 확보관리 | 모집관리 | AI 이력서 파싱·수집 | 이력서 수집 | `/acquisition/recruiting/resume-collection` |
| 확보관리 | 모집관리 | AI 이력서 파싱·수집 | AI 이력서 파싱 | `/acquisition/recruiting/resume-parsing` |
| 확보관리 | 모집관리 | 모집통계분석 | 모집 통계 분석 | `/acquisition/recruiting/analytics` |
| 확보관리 | 후보자관리 | AI 판정 | 추천·보류·탈락 | `/acquisition/candidates` |
| 확보관리 | 면접관리 | 면접 일정 | 결과 처리 | `/acquisition/interviews` |
| 확보관리 | 선발·처우 | 오퍼·검진·서류 | 처우 확정 | `/acquisition/selection` |
| 확보관리 | 입사·OCR | 증빙 검토 | OCR 교차검토 | `/acquisition/onboarding` |

## Redirect rules

- `/workforce-plan` → `/acquisition/workforce`
- `/recruiting` → `/acquisition/recruiting/job-postings`
- `/interview-mgmt` → `/acquisition/interviews`
- `/recruit-analytics` → `/acquisition/recruiting/analytics`
- `/biodata`, `/onboarding-terms`, `/hire-approval` → `/acquisition/selection`
- unknown route → logged-in user는 `/acquisition`, 비로그인 사용자는 `/`

## 구현 파일

- `frontend/src/pages/acqNavigation.js`: 확보관리 IA 단일 소스
- `frontend/src/components/AppSidebar.jsx`: 새 IA 기반 사이드바
- `frontend/src/pages/AcqRecruiting.jsx`: 모집관리 세분류 화면
- `frontend/src/pages/AcqEvaluation.jsx`: 부서별 평가기준 관리 화면
- `frontend/src/pages/acqScoring.js`: 부서별 기준 기반 AI 점수 산정/대시보드 요약
- `frontend/src/App.jsx`: canonical route와 redirect
- `frontend/src/components/GlobalSearch.jsx`: 검색 경로 통일
- `frontend/src/components/Navbar.jsx`: 상단 페이지 제목 통일

## 자동화 연결

- 평가기준이 없는 부서는 공고관리에서 `기준 필요`로 표시
- draft 공고는 부서 기준이 있어야 오픈 가능
- 이력서 수집은 부서별 기준 연결 상태와 자동 분류 대상 지원자 수를 표시
- AI 이력서 파싱은 지원자의 부서 기준으로 필수요건, 우대요건, 조직적합, 리스크 점수를 재산정
- 모집통계분석은 부서별 기준 연결 여부와 평균 AI 점수를 표시
- 확보현황 대시보드는 `기준 미설정 부서` KPI를 노출

## UI 패턴

2026-05-09 추가 결정: 확보관리 상세 화면은 모집관리에서 검증된 `왼쪽 업무 메뉴 + 오른쪽 작업 패널` 패턴을 기본으로 사용한다.

- 인력계획: 채용의뢰 상태별 왼쪽 필터
- 평가기준: 부서별 기준 왼쪽 메뉴, 오른쪽 기준/가중치/면접문항/연동 현황
- 후보자관리: 후보자 상태별 왼쪽 필터
- 면접관리: 오늘/예정/완료 왼쪽 필터
- 선발·처우관리: 최종 합격자 왼쪽 목록, 오른쪽 상세 처리
- 입사·OCR: OCR 상태별 왼쪽 필터

## Full HRM Operating System 반영

2026-05-09 추가 결정: `AEON_HR_Full_HRM_Operating_System.md` 기준으로 AEON HR을 채용관리 프로그램이 아니라 전체 HR Operating System으로 확장한다.

- `/hr-os`: HR OS Overview
- `/growth`: 교육·경력개발관리 Growth OS
- `/performance-os`: 평가관리 Performance OS
- `/reward`: 보상관리 Reward OS
- `/relations`: 유지관리 Employee Relations OS
- `/separation`: 이직관리 Separation OS
- `/hr-analytics`: Decision Intelligence
- `/compliance`: Legal Control Tower

확보관리에는 문서의 강제 통제 원칙에 맞춰 `근로계약서 자동발송` 탭을 추가했다. 임금, 소정근로시간, 휴일, 연차, 근무장소, 담당업무가 비어 있으면 전자발송을 차단한다.

## 검증

- `npm run build`: 통과
- 수정 파일 대상 ESLint: 통과
- 주요 route 200 확인
  - `/acquisition/recruiting/job-postings`
  - `/acquisition/recruiting/resume-parsing`
  - `/recruiting`
  - unknown route
