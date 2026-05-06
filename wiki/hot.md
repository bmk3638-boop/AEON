---
type: meta
title: "Hot Cache"
updated: 2026-05-05
---

# Recent Context

## Last Updated
2026-05-05. Wiki scaffold 완전 완료. hr-tools-web MVP 주요 버그 수정 완료.

## Key Recent Facts
- **확보관리 파이프라인 복구**: [[meta/확보관리 파이프라인 복구 2026-05-05]]
- **확보관리 필수 흐름**: 공고 스캔 → 사람인 이력서 자동 다운로드 → PDF 과학적 파싱 → OCR 교차검토 → 지원자 평가·면접 → 신규입사등록·인사정보등록
- **인증번호 반복 팝업 원인 해결**: 과거 로그의 `WEB_AUTH` 줄을 새 인증 요청으로 오해하던 문제를 기준선 방식으로 수정
- **상단 명칭 변경**: `AskHR`는 사용자-facing 명칭에서 제거하고 `HR챗봇` 사용
- **디자인 시스템 통일 완료**: [[meta/디자인 시스템 통일 2026-05-05]]
- **현재 팔레트 기준**: 60% `#F4F7F2`, 30% `#FFFFFF/#E7EFE7/#263B36`, 10% `#2B8C7E/#9DDBCF`
- **외부 컨설팅사명 제거**: 웹사이트와 백엔드 competency source에서 외부 회사명을 제거하고 AEON 역량지도·업무분류·몰입신호로 통일
- **채용 화면 로그 노출 완화**: 검은 터미널형 실행 로그를 사용자용 진행 상태 카드로 대체
- **홈 개편 완료**: [[meta/HR Tools 홈 리서치 기반 개편 2026-05-05]]
- **HRM 재배치 결정**: [[meta/HRM 기능영역 재배치 2026-05-05]]
- **실제 기능 추가**: `/develop` 개발관리, `/retention` 유지관리 라우트와 화면 추가
- **실제 실행 경로 정정**: `localhost:5173`은 `C:\Users\qoaud\Projects\hr-tools-web\frontend`를 보고 있음. Desktop 복사본이 아님.
- **실행본 반영 완료**: `Projects` 쪽 `Home.jsx`, `index.css`에도 홈 개편 반영.
- **Figma/FigJam 기능맵**: AEON HR Consulting Intelligence Map 생성 완료
- **홈 신규 기능명**: `AEON 역량지도`, `AEON 업무분류`, `AEON 몰입신호`
- **검증**: `npm run build` 성공, `npx eslint src/pages/Home.jsx` 성공, 전체 lint는 기존 파일 오류로 실패
- **Codex 인수인계 추가**: [[meta/HR Tools 작업 인수인계 2026-05-05]]
- **현재 권장 개발 포트 기준**: 프론트엔드 5173, 백엔드 8000
- **확인된 불일치**: `frontend/vite.config.js`의 `/api` proxy가 8010을 바라보지만 현재 백엔드 기준은 8000
- **다음 우선순위**: API 연결 정리 -> 깨진 JSX/한글 복구 -> 프론트/백엔드 라우트 대조 -> 핵심 데모 QA -> Docker 복구
- **백엔드 포트**: 8010 (start_servers.ps1 기준), 프론트 5173
- **VITE_API_URL**: `http://localhost:8010` (frontend/.env.local)
- **bcrypt+passlib 충돌 해결**: passlib 제거, 직접 bcrypt 사용으로 회원가입 멈춤 버그 수정
- **회원가입 개선**: 사람인 ID/PW 필드 추가 → 가입 즉시 saramin_id 연동
- **대시보드 신설**: `/dashboard` 경로, 6개 직무섹터 (생산·장비·품질·연구개발·인사·재무회계)
- **스킬 현황**: ~/.agents/skills/ 에 23개 전역 설치 (taste-skill, claude-obsidian, karpathy 등)
- **에이전트 조직도**: AGT-00~30 설계됨, 현재 6개 활성
- **wiki scaffold 완료**: entities 6개, concepts 4개, domains 4개, decisions 1개, templates 5개, CSS 스니펫

## Recent Changes

- Created: wiki/entities/ (배명규, AEON, hr-tools-web, 사람인, 에이전트-목록)
- Created: wiki/concepts/ (HR자동화, 스킬시스템, 멀티유저아키텍처)
- Created: wiki/domains/ (채용자동화, 직무역량평가, 에이전트조직)
- Created: wiki/decisions/bcrypt수정
- Created: wiki/_templates/ (entity, concept, domain, decision, question)
- Created: .obsidian/snippets/vault-colors.css (네이비+코랄 테마)
- Updated: AEON/CLAUDE.md — wiki 참조 지침 추가 (hot.md → index.md → 개별 페이지 순서)
- Created: `frontend/src/pages/Dashboard.jsx` (직무역량 평가 대시보드)
- Updated: `auth/router.py`, `auth/security.py`, `frontend/.env.local`, `vite.config.js`
- Updated: `AEON HR 서버시작.vbs` (창 표시 모드로 변경)

## Active Threads

- `/autoresearch`, `/wiki-ingest` 호출됨 — 주제/소스 미지정, 사용자 확인 필요
- 모두의창업 사업계획서 작성 진행 중 (06_학습/모두의창업/)
- 배포 아직 안 됨 — 현재 로컬 전용, ngrok/Railway 논의 필요
- per-user 로그 격리, 백엔드 자동시작(Task Scheduler) 미완료
