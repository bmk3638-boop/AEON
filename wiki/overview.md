---
type: meta
title: "AEON 위키 개요"
status: active
created: 2026-05-05
updated: 2026-05-05
tags: [meta, overview]
---

# AEON 지식 베이스 — 전체 개요

> HR AI 자동화 컨설팅 사업 AEON의 지식 허브. 모든 세션의 산출물이 여기에 축적된다.

---

## 사업 정체성

**AEON**은 중소·중견기업 HR 담당자의 반복 업무를 AI로 자동화하는 컨설팅 사업이다.
단계적으로 글로벌 ERP SaaS로 진화하는 것이 장기 목표.

| 항목 | 내용 |
|---|---|
| 대표 | 배명규 (bmk3638@gmail.com) |
| 현재 단계 | 창업 준비 / 모두의창업 도전 중 (2026-05 데드라인) |
| 핵심 가치 | 촘촘하고 세밀한 설계 — 고객 컴플레인 제로 수준의 완성도 |
| 장기 비전 | AI 자문 컨설팅 매출 1조+ / 글로벌 Ultimate SaaS |

---

## 현재 활성 프로젝트

### 1. hr-tools-web MVP
- 경로: `C:\Users\qoaud\Projects\hr-tools-web\`
- 스택: React + FastAPI + Gemini API
- 핵심 기능: 사람인 채용 자동화 파이프라인, 직무역량 평가 대시보드
- 상태: ✅ 백엔드(8010) + 프론트(5173) 로컬 실행 중

### 2. 사람인 자동화 파이프라인 (pipeline.py)
- Selenium + Chrome으로 hiring.saramin.co.kr 자동 로그인
- 공고 스캔 → 이력서 PDF 다운로드 → AI 분석 → 대시보드 출력
- 다중 사용자 지원: 각 유저의 사람인 ID/PW를 users.json에 저장

### 3. AEON 볼트 (이 곳)
- Obsidian 지식베이스 + GitHub 자동 동기화
- Claude Code가 세션마다 읽고 쓰는 장기 메모리

---

## 에이전트 현황

| ID | 이름 | 상태 | 역할 |
|---|---|---|---|
| AGT-00 | Claude 총괄 | ✅ 활성 | 오케스트레이터, 전체 보조 |
| AGT-16 | 사람인 자동화 | ✅ 활성 | pipeline.py 실행 |
| AGT-17 | 이력서 분석관 | ✅ 활성 | PDF 파싱 + 스코어링 |
| AGT-18 | 대시보드 | ✅ 활성 | 직무역량 평가 UI |
| AGT-20 | Obsidian 관리자 | ✅ 활성 | 볼트 문서화 |
| AGT-21 | 리서치 | ✅ 활성 | 기술 탐색 |
| AGT-01~15, 22~30 | 기타 | 🔄 대기 | Phase별 순차 활성화 |

---

## 스킬 무기고 (23개)

- **디자인**: taste-skill 9종 (design-taste-frontend, gpt-taste, high-end-visual-design 등)
- **Obsidian**: claude-obsidian 11종 (wiki, save, autoresearch, wiki-ingest 등)
- **코딩 철학**: karpathy-guidelines
- **QA**: gstack
- **커스텀**: ocr-review-skill (이력서·고용보험·원천징수 교차검증)

---

## 관련 링크

- [[entities/배명규]] — 대표 프로필
- [[domains/채용자동화]] — 사람인 파이프라인 기술 상세
- [[domains/hr-tools-web]] — MVP 플랫폼 구조
- [[domains/에이전트조직]] — 30개 에이전트 전체 맵
- [[decisions/기술스택선택]] — React+FastAPI 선택 근거
