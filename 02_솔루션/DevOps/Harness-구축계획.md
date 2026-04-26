---
title: Harness DevOps 구축계획
type: 솔루션-활성
tags: [DevOps, CI/CD, Harness, 자동화]
created: 2026-04-26
status: 진행중
---

> 미래 스택이 아닌 **지금 당장 구축할 DevOps 파이프라인**.
> saramin-automation 프로젝트부터 시작해서 AEON 전체 코드 배포 자동화.

---

## Harness란

- **GitHub**: github.com/harness/harness
- **분류**: DevOps 플랫폼 (Git + CI/CD + 아티팩트 레지스트리 통합)
- **Cloud 플랜**: app.harness.io — 무료 플랜 있음, 계정 생성 후 바로 사용

---

## AEON에서 쓸 용도

| 단계 | 대상 프로젝트 | 파이프라인 내용 |
| --- | --- | --- |
| 1단계 (지금) | saramin-automation | push → 자동 테스트 → 실행 확인 |
| 2단계 | HR 대시보드 | push → HTML 빌드 → 배포 |
| 3단계 | VoltAgent SaaS | push → Docker 빌드 → PM2 배포 |

---

## 실행 방식: Self-hosted Docker (로컬 서버)

Cloud 계정 없이 내 PC에서 직접 실행하는 방식 선택.

### 사전 조건
- Docker Desktop 설치 필요 → docker.com/products/docker-desktop

### 실행 명령어 (Windows PowerShell)

```powershell
docker run -d `
  -p 3000:3000 `
  -p 3022:3022 `
  -v /var/run/docker.sock:/var/run/docker.sock `
  -v C:/harness-data:/data `
  --name harness `
  --restart always `
  harness/harness
```

### 접속
- 브라우저: `http://localhost:3000`
- Git SSH: 포트 3022

---

## 구축 순서

- [ ] Docker Desktop 설치 및 실행
- [ ] 위 명령어로 Harness 컨테이너 실행
- [ ] localhost:3000 접속 → 초기 설정
- [ ] saramin-automation GitHub 레포 연결
- [ ] 기본 파이프라인 생성: push → 자동 테스트
- [ ] 성공/실패 알림 설정

---

*관련: [[06_학습/미래기술스택-후보]] | [[02_솔루션/HR자동화모듈/claude-code-무기설정]]*
*마지막 업데이트: 2026-04-26*
