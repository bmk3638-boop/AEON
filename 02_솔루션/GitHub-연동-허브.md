---
tags: [GitHub, SADA, HR자동화, 연동]
updated: 2026-04-30
---

# GitHub 연동 허브

AEON에서 관리되는 모든 GitHub 레포 현황 및 바로가기

---

## 레포 목록

### 1. hr-tools-web
> **SADA 앱 소스코드 + 제작 레시피 + BAT 런처**

- **GitHub**: https://github.com/bmk3638-boop/hr-tools-web
- **브랜치**: `master`
- **주요 폴더**:
  - `sada/` — saramin-automation 전체 소스 (Python, PowerShell)
  - `launchers/` — 바탕화면용 BAT 실행 파일 3개
  - `frontend/` — React + Tailwind 웹 프론트엔드
  - `RECIPE.md` — 앱 제작 방법 및 노트북 설치 가이드
- **관련 Obsidian 노트**: [[HR자동화모듈]], [[HR자동화모듈/성공로그]]

---

### 2. AEON
> **이 Obsidian 볼트 전체 백업 및 동기화**

- **GitHub**: https://github.com/bmk3638-boop/AEON
- **브랜치**: `main`
- **포함 내용**: AEON 볼트 전체 (00_사업 ~ 07_재무)
- **제외 항목**: `.obsidian/` 시스템 폴더, `config.json` 민감 파일
- **관련 Obsidian 노트**: [[CLAUDE]], [[00_사업/AI에이전트-조직도]]

---

## 노트북에서 동기화하는 방법

```bash
# SADA 앱 받기
git clone https://github.com/bmk3638-boop/hr-tools-web
cd hr-tools-web/sada
pip install selenium fastapi uvicorn pdfplumber python-dotenv
# launchers/*.bat 경로에서 bmk36 → 내 사용자명 변경

# Obsidian 볼트 받기
git clone https://github.com/bmk3638-boop/AEON
# Obsidian에서 볼트 열기: AEON 폴더 선택
```

---

## 업데이트 방법 (이 PC에서)

```bash
# hr-tools-web 최신화
cd C:\Users\bmk36\Projects\_deploy_hr
git pull && git add . && git commit -m "update" && git push

# AEON 볼트 최신화
cd C:\Users\bmk36\Projects\_deploy_aeon
git pull && git add . && git commit -m "vault update" && git push
```

---

*이 파일은 두 레포에 모두 포함됨 — hr-tools-web/OBSIDIAN_HUB.md 참고*
