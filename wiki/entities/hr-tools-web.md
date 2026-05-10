---
type: entity
title: "hr-tools-web"
status: active
created: 2026-05-05
updated: 2026-05-09
tags: [프로젝트, MVP, React, FastAPI]
---

# hr-tools-web

## 개요

AEON HR AI 자동화 MVP 플랫폼. React + FastAPI 기반 풀스택 웹 애플리케이션.

## 기술 스택

| 레이어 | 기술 |
|---|---|
| 프론트엔드 | React + Vite (port 5173 dev / 3000 prod) |
| 백엔드 | FastAPI Python (port 8000 dev/prod Docker 기준) |
| 인증 | JWT (python-jose) + bcrypt 직접 사용 |
| 자동화 | Selenium + Chrome WebDriver |
| 배포 | Docker (예정), Railway (백엔드), Vercel (프론트) |

## 핵심 기능

- 회원가입 / 로그인 (JWT)
- 사람인 채용 자동화 파이프라인
- 이력서 AI 스코어링 대시보드 (6개 직무 섹터)
- 다중 사용자 사람인 계정 분리
- Acquisition OS 데모 상태 저장과 확보관리 전체 업무 흐름 조작

## 주요 파일

| 파일 | 역할 |
|---|---|
| `backend/auth/router.py` | 인증 API |
| `backend/auth/security.py` | bcrypt 해시 |
| `backend/modules/recruiting/pipeline.py` | 사람인 자동화 |
| `frontend/src/pages/acqStore.js` | 확보관리 데모 상태 저장 |
| `frontend/src/pages/AcquisitionMgmt.jsx` | 확보관리 대시보드 |
| `frontend/src/pages/Dashboard.jsx` | 직무역량 대시보드 |
| `frontend/src/pages/Signup.jsx` | 가입 + 사람인 연동 |

## 알려진 이슈·결정

- passlib → bcrypt 직접 사용 (버전 충돌): [[decisions/bcrypt수정]]
- 서버 실행: `start_servers.ps1` 또는 `AEON HR 서버시작.vbs`
- 2026-05-09 현재 Codex 작업 경로: `C:\Users\qoaud\Desktop\hr-tools-web`
- 최신 확보관리 사용성 개선: [[meta/HR Tools 확보관리 사용성 개선 2026-05-09]]

> 관련: [[AEON]] | [[domains/채용자동화]] | [[entities/사람인]]
