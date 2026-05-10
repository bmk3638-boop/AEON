---
type: meta
title: "Hot Cache"
updated: 2026-05-09
---

# Recent Context

## Last Updated
2026-05-09. hr-tools-web 확보관리 MVP를 HR 컨설턴트 시연 기준으로 조작 가능하게 개선. 실제 AEON Obsidian 볼트 업데이트 재개.

## Key Recent Facts
- **2026-05-09 최신 세션**: [[meta/HR Tools 확보관리 사용성 개선 2026-05-09]]
- **확보관리 IA 정리**: [[meta/HR Tools 확보관리 IA 정리 2026-05-09]]
- **Canonical route 원칙**: 확보관리 업무는 `/acquisition/...` 하위로 통일하고 예전 주소는 redirect만 유지
- **평가기준 선행 원칙**: 업무 순서는 인력계획 → 평가기준 → 모집관리 → 후보자관리 → 면접관리 → 선발·처우 → 입사·OCR
- **부서별 평가기준 원칙**: 평가기준은 전사 공통 1개가 아니라 부서별로 관리하며, 공고 오픈·이력서 수집·AI 이력서 파싱·모집통계·확보현황 대시보드가 같은 부서 기준을 참조
- **모집관리 구조**: 채용공고관리(홍보채널, 채용공고 관리) / AI 이력서 파싱·수집(공고 스캔, 이력서 수집, AI 이력서 파싱) / 모집통계분석(모집 통계 분석)
- **확보관리 UI 패턴**: 상세 화면은 모집관리처럼 왼쪽 업무 메뉴와 오른쪽 작업 패널 구조를 기본으로 사용
- **Full HRM OS 반영**: `AEON_HR_Full_HRM_Operating_System.md` 기준으로 HR OS Overview, Growth OS, Performance OS, Reward OS, Relations OS, Separation OS, HR Analytics, Compliance Center route 추가
- **근로계약서 자동발송 구현**: 선발·처우관리에서 필수항목 체크, 전자발송, 서명상태, 교부로그를 관리하고 임금/근로시간/휴일/연차/근무장소/담당업무 누락 시 발송 차단
- **현재 Codex 작업 경로**: `C:\Users\qoaud\Desktop\hr-tools-web`
- **현재 개발 실행 기준**: 프론트 `http://127.0.0.1:5173`, 백엔드 `http://127.0.0.1:8000`
- **Vite 프록시 정정 완료**: `/api` proxy가 `http://localhost:8000`을 바라보도록 수정
- **Acquisition OS 상태 저장 추가**: `frontend/src/pages/acqStore.js`, `localStorage` key `aeon-acquisition-os-v1`
- **HR 컨설턴트 사용 흐름 구현**: 채용의뢰서 생성·승인 → 공고 오픈 → 이력서 파싱 → 후보자 판정 → 면접 처리 → 오퍼/검진/서류/OCR 확인
- **검증**: `npm run build` 성공, 수정 파일 대상 ESLint 성공, `/api/recruiting/status` 200 확인
- **주의**: `hr-tools-web/docs`는 레포 내부 문서이고, 실제 Obsidian 볼트는 `C:\Users\qoaud\AEON`
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
- **과거 실행 경로 메모**: 2026-05-05에는 `Projects` 기준 메모가 있었으나, 2026-05-09 현재 작업·검증 기준은 `Desktop\hr-tools-web`
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
