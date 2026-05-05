---
type: meta
title: "Hot Cache"
updated: 2026-05-05T18:00:00
---

# Recent Context

## Last Updated
2026-05-05. Wiki scaffold 완전 완료. hr-tools-web MVP 주요 버그 수정 완료.

## Key Recent Facts
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
