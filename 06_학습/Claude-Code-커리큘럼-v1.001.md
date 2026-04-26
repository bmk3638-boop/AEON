---
title: 제1차 임시 교육커리큘럼 ver.1.001 통합보고서
type: curriculum
tags: [claude-code, 교육, 커리큘럼, AI코딩도구, 클로드코드]
created: 2026-04-22
updated: 2026-04-22
version: 1.001
status: 임시(초안)
---

# 제1차 임시 교육커리큘럼 ver.1.001
# Claude Code 완전 정복 통합보고서

> **문서 정보**
> - 버전: 1.001 (임시 초안)
> - 작성일: 2026-04-22
> - 기준 버전: Claude Code 2.1.114+
> - 대상: 처음 Claude Code를 접하는 학습자 ~ 실무 활용 단계

---

## 목차

1. [개요 및 커리큘럼 구성 원칙](#1-개요-및-커리큘럼-구성-원칙)
2. [Module 1 — Claude Code란 무엇인가](#module-1--claude-code란-무엇인가)
3. [Module 2 — 설치 및 환경 설정](#module-2--설치-및-환경-설정)
4. [Module 3 — 기본 사용법](#module-3--기본-사용법)
5. [Module 4 — 핵심 모드와 워크플로우](#module-4--핵심-모드와-워크플로우)
6. [Module 5 — 슬래시 커맨드 완전 정리](#module-5--슬래시-커맨드-완전-정리)
7. [Module 6 — 고급 기능 (MCP · 훅 · 플러그인)](#module-6--고급-기능-mcp--훅--플러그인)
8. [Module 7 — VS Code 통합 사용법](#module-7--vs-code-통합-사용법)
9. [Module 8 — Obsidian + Claude Code 연동](#module-8--obsidian--claude-code-연동)
10. [Module 9 — 실전 활용 패턴 & 베스트 프랙티스](#module-9--실전-활용-패턴--베스트-프랙티스)
11. [Module 10 — 학습 로드맵 & 다음 단계](#module-10--학습-로드맵--다음-단계)
12. [부록 — 주요 단축키 & 명령어 레퍼런스](#부록--주요-단축키--명령어-레퍼런스)

---

## 1. 개요 및 커리큘럼 구성 원칙

### 이 커리큘럼의 목적

Claude Code는 단순한 AI 채팅 도구가 아니라 **코드베이스를 이해하고, 파일을 읽고 쓰고, 터미널 명령어를 실행하며 자율적으로 소프트웨어를 개발하는 AI 에이전트 시스템**입니다.

이 커리큘럼은 다음을 목표로 합니다:
- Claude Code의 개념과 철학을 명확히 이해한다
- 설치부터 고급 활용까지 단계적으로 익힌다
- Obsidian 볼트와의 연동 등 실무에 바로 적용 가능한 패턴을 습득한다
- 학습자가 스스로 워크플로우를 설계할 수 있는 능력을 기른다

### 커리큘럼 구성 철학

| 원칙 | 설명 |
|------|------|
| 순서 중심 학습 | 이전 모듈을 이해해야 다음 모듈이 열린다 |
| 실습 우선 | 개념 설명 후 즉시 실습 과제 제시 |
| 점진적 복잡도 | 기초 → 응용 → 자동화 순서 |
| 생산성 중심 | 일상 업무에 당장 쓸 수 있는 내용 위주 |

### 선수 지식

- 기본적인 터미널/명령 프롬프트 사용 경험
- Markdown 기본 문법 이해
- (선택) Node.js/npm 기본 개념

---

## Module 1 — Claude Code란 무엇인가

### 1.1 정의

**Claude Code**는 Anthropic이 만든 AI 코딩 에이전트 CLI(Command Line Interface) 도구입니다.

> "Unleash Claude's raw power directly in your terminal. Search million-line codebases instantly. Turn hours-long workflows into a single command."

- **CLI 도구**: 터미널에서 `claude` 명령으로 실행
- **VS Code 확장**: 에디터 우측 상단 오렌지 아이콘으로 접근
- **Web 앱**: claude.ai/code 에서도 사용 가능
- **JetBrains 확장**: IntelliJ, PyCharm 등 지원

### 1.2 Claude Code가 할 수 있는 것

```
코드베이스 탐색 → 파일 읽기/쓰기 → 터미널 명령 실행 → 버그 수정 → 기능 구현
```

| 능력 | 상세 |
|------|------|
| **코드 이해** | 수백만 줄 코드베이스를 순식간에 검색·이해 |
| **파일 조작** | 읽기, 쓰기, 편집, 생성, 삭제 |
| **터미널 실행** | 빌드, 테스트, 배포 명령 실행 (권한 확인 후) |
| **자율 작업** | 복잡한 멀티스텝 태스크를 계획하고 실행 |
| **컨텍스트 유지** | 대화 세션 간 히스토리 저장·복원 |
| **서브에이전트** | 병렬 작업을 위한 하위 AI 에이전트 생성 |

### 1.3 Claude Code vs 일반 AI 채팅의 차이

| 구분 | 일반 AI 채팅 | Claude Code |
|------|-------------|-------------|
| 파일 접근 | 불가 (사용자가 붙여넣기) | 직접 읽기/쓰기 |
| 명령 실행 | 불가 | 터미널에서 직접 실행 |
| 코드베이스 파악 | 제한적 | 전체 프로젝트 구조 파악 |
| 작업 연속성 | 대화 단위 | 세션·프로젝트 단위 |
| 자율성 | 답변 생성만 | 계획→실행→검증 전 사이클 |

### 1.4 핵심 철학: "당신의 도구, 당신의 워크플로우"

Claude Code는 기존 개발 환경을 대체하지 않고 **확장**합니다:
- 기존 터미널, 에디터, 버전 관리 도구와 함께 사용
- 개발자가 허용한 것만 실행 (권한 모델)
- 대화 중심의 자연스러운 상호작용

### 실습 1-A
> Claude Code를 사용하기 전, 아래 질문에 답해보세요:
> 1. 내가 매일 반복하는 코딩/파일 작업은 무엇인가?
> 2. 시간이 가장 많이 걸리는 작업은?
> 3. Claude Code로 자동화하고 싶은 것은?

---

## Module 2 — 설치 및 환경 설정

### 2.1 시스템 요구사항

| 항목 | 최소 | 권장 |
|------|------|------|
| OS | Windows 10, macOS 12, Ubuntu 20 | Windows 11, macOS 14, Ubuntu 22 |
| Node.js | 18+ | 20 LTS |
| VS Code | 1.98.0+ | 최신 버전 |
| 인터넷 | 필수 | 안정적 연결 |

### 2.2 CLI 설치 (터미널)

```bash
# 전역 설치
npm install -g @anthropic-ai/claude-code

# 설치 확인
claude --version

# 업데이트
claude update
```

### 2.3 VS Code 확장 설치

1. VS Code 열기
2. Extensions 탭 (Ctrl+Shift+X)
3. "Claude Code" 검색
4. Anthropic 공식 확장 설치
5. 우측 상단 오렌지 아이콘 확인

**단축키**: `Ctrl+Esc` (Windows/Linux) | `Cmd+Esc` (Mac)

### 2.4 로그인 및 계정 연결

```bash
# 로그인 (브라우저가 열립니다)
claude login

# Anthropic API 키로 직접 연결 시
export ANTHROPIC_API_KEY="your-key-here"
```

**지원 요금제**:
- Pro, Max, Team, Enterprise 구독
- API 키 Pay-as-you-go

### 2.5 초기 설정 확인

```bash
# 설정 확인
claude /config

# 의사(doctor) - 환경 점검
claude /doctor

# 현재 모델 확인
claude /model
```

### 2.6 Windows 특화 설정

Windows 환경에서는 PowerShell 도구가 추가로 지원됩니다:

```powershell
# PowerShell 도구 활성화 (opt-in)
$env:CLAUDE_CODE_USE_POWERSHELL_TOOL = "1"
```

### 실습 2-A
> 1. `claude --version` 실행하여 버전 확인
> 2. `/doctor` 실행하여 환경 점검
> 3. 첫 번째 질문: "안녕하세요, 간단히 자기소개 해주세요" 입력

---

## Module 3 — 기본 사용법

### 3.1 첫 번째 대화

```bash
# 프로젝트 폴더에서 실행
cd my-project
claude

# 또는 직접 질문 전달
claude "이 코드베이스에서 인증 관련 파일을 찾아줘"
```

### 3.2 @ 멘션으로 컨텍스트 제공

파일이나 폴더를 명시적으로 참조할 때 사용합니다:

```
@src/auth/login.ts 이 파일에서 버그를 찾아줘
@components/ 이 폴더의 구조를 설명해줘
@README.md 이 프로젝트가 무엇인지 요약해줘
```

### 3.3 Claude가 할 수 있는 기본 작업들

**코드 설명 요청:**
```
이 함수가 어떻게 동작하는지 설명해줘
```

**버그 수정:**
```
@src/utils.ts 45번째 줄에서 TypeError가 발생해. 고쳐줘
```

**새 기능 구현:**
```
사용자 이메일 검증 함수를 @src/validators.ts 에 추가해줘
```

**리팩토링:**
```
@src/api.js 이 파일을 TypeScript로 변환해줘
```

**터미널 명령:**
```
테스트를 실행하고 실패하는 케이스를 고쳐줘
```

### 3.4 권한 모델 이해

Claude Code는 모든 파일 쓰기/터미널 실행 전에 **사용자 확인**을 받습니다:

```
Claude wants to:
  Edit: src/auth/login.ts
  [y] Yes  [n] No  [a] Always  [s] Skip  [q] Quit
```

| 옵션 | 의미 |
|------|------|
| `y` (Yes) | 이번 한 번 허용 |
| `n` (No) | 거부 |
| `a` (Always) | 이 세션에서 항상 허용 |
| `s` (Skip) | 건너뜀 |

### 3.5 세션 관리

```bash
# 이전 대화 이어서 하기
claude --resume
# 또는 대화 중
/resume

# 새 대화 시작
Ctrl+N (설정 필요)
# 또는 /clear
```

### 실습 3-A
> 아무 프로젝트 폴더에서 Claude Code를 실행하고:
> 1. "이 프로젝트의 구조를 설명해줘" 요청
> 2. @ 멘션으로 특정 파일 지목하여 질문
> 3. 간단한 수정 작업 후 권한 요청 흐름 확인

---

## Module 4 — 핵심 모드와 워크플로우

### 4.1 Plan Mode (계획 모드)

복잡한 작업 전에 Claude가 **실행 계획을 먼저 작성**하는 모드입니다.

```bash
# Plan Mode 진입
/plan

# 또는 질문 시 명시
"새로운 결제 시스템을 구현할 계획을 먼저 세워줘"
```

**언제 사용하나요?**
- 대규모 리팩토링
- 새 기능 설계
- 여러 파일에 걸친 변경
- 실수 시 되돌리기 어려운 작업

**Plan Mode 흐름:**
```
요청 → 계획 작성 → 사용자 승인/수정 → 실행
```

### 4.2 Accept Mode (자동 승인 모드)

Claude의 모든 작업을 **자동으로 승인**하는 모드입니다.

> **주의**: 신중하게 사용하세요. 원하지 않는 변경이 발생할 수 있습니다.

```bash
# Accept Mode 토글
/accept
```

**권장 사용 시나리오:**
- 충분히 검토된 작업
- 버전 관리로 롤백 가능한 환경
- 반복적인 포맷팅/정리 작업

### 4.3 Effort Level (노력 레벨)

모델의 사고 깊이를 조절합니다:

```bash
/effort         # 대화형 슬라이더 열기
/effort low     # 빠른 응답 (간단한 질문용)
/effort medium  # 기본값
/effort high    # 깊은 분석 (Pro/Max)
/effort max     # 최고 수준 (Max 구독 필요)
/effort xhigh   # Opus 4.7 전용 초고수준
/effort auto    # 자동 (현재: high로 기본 설정)
```

### 4.4 Model 선택

```bash
/model              # 모델 선택 메뉴
/model opus         # Claude Opus 4.7 (가장 강력)
/model sonnet       # Claude Sonnet 4.6 (균형)
/model haiku        # Claude Haiku 4.5 (빠름·저렴)
```

**모델 특성:**
| 모델 | 특성 | 권장 용도 |
|------|------|-----------|
| Opus 4.7 | 최고 지능, 1M 컨텍스트 | 복잡한 설계, 깊은 분석 |
| Sonnet 4.6 | 균형 잡힌 성능 | 일반 코딩, 일상 업무 |
| Haiku 4.5 | 빠름, 경제적 | 간단한 수정, 빠른 답변 |

### 4.5 Context 관리

```bash
/context        # 현재 컨텍스트 사용량 확인
/compact        # 긴 대화를 요약하여 컨텍스트 절약
/clear          # 컨텍스트 초기화 (새 대화)
```

**컨텍스트 사용 팁:**
- 긴 세션에서 `/compact`를 주기적으로 실행
- Opus 4.7은 1M 토큰 네이티브 컨텍스트 지원
- 대형 파일은 필요한 부분만 참조

### 4.6 Fast Mode

```bash
/fast           # Fast Mode 토글
```

Opus 4.6 전용 빠른 출력 모드 (더 작은 모델로 다운그레이드하지 않음)

### 실습 4-A
> 1. `/plan` 모드로 "현재 폴더에 간단한 README.md를 만들어줘" 요청
> 2. 계획 검토 후 수정 또는 승인
> 3. `/effort`로 레벨을 바꿔가며 같은 질문에 대한 응답 차이 비교

---

## Module 5 — 슬래시 커맨드 완전 정리

### 5.1 시스템 슬래시 커맨드

#### 세션 관리
```bash
/resume         # 이전 세션 이어서 계속하기
/branch         # 현재 대화에서 새 브랜치 분기
/clear          # 대화 초기화
/rename [이름]  # 현재 세션 이름 변경
/recap          # 세션 요약 보기
/rewind         # 마지막 응답 되돌리기
/undo           # /rewind 의 별칭
```

#### 설정 및 환경
```bash
/config         # 설정 메뉴 열기
/doctor         # 환경 진단
/model          # 모델 선택
/effort         # 노력 레벨 설정
/theme          # 테마 변경 (dark/light/auto)
/tui            # 터미널 UI 모드 전환
/focus          # 포커스 모드 토글
```

#### 정보 및 분석
```bash
/context        # 컨텍스트 사용량 확인
/insights       # 세션 인사이트 보기
/status         # 현재 상태 확인
/version        # Claude Code 버전 확인
```

#### 코드 작업
```bash
/compact        # 컨텍스트 요약(압축)
/init           # 프로젝트 CLAUDE.md 초기화
/review         # Pull Request 리뷰
/security-review # 보안 리뷰
```

#### 출력 및 공유
```bash
/copy           # 응답 클립보드 복사
/save           # 응답을 파일로 저장
```

#### 고급 기능
```bash
/ultrareview    # 멀티에이전트 클라우드 코드 리뷰
/ultraplan      # AI 기반 고급 계획 수립
/loop [interval] # 반복 실행 루프
/schedule       # 예약 작업 설정
```

#### 플러그인 관리
```bash
/plugin         # 플러그인 관리 메뉴
/skills         # 사용 가능한 스킬 목록 보기
/reload-plugins # 플러그인 재로드
```

### 5.2 커스텀 슬래시 커맨드 만들기

`.claude/commands/` 폴더에 Markdown 파일을 만들면 커스텀 커맨드가 됩니다:

```bash
# 파일 생성
.claude/commands/my-command.md
```

```markdown
# My Custom Command

이 커맨드는 $ARGUMENTS 를 처리합니다.

현재 코드베이스를 분석하고 $ARGUMENTS 에 대한 보고서를 작성하세요.
```

사용:
```
/my-command 성능 최적화
```

### 5.3 CLAUDE.md - 프로젝트 컨텍스트 파일

```bash
/init           # 자동으로 CLAUDE.md 생성
```

CLAUDE.md는 매 세션마다 Claude가 자동으로 읽는 프로젝트 설명 파일입니다:

```markdown
# My Project

## 기술 스택
- Node.js 20, TypeScript, React 18
- PostgreSQL, Redis

## 코딩 컨벤션
- 함수명: camelCase
- 파일명: kebab-case
- 주석: 한국어

## 자주 쓰는 명령어
- 테스트: `npm test`
- 빌드: `npm run build`
```

### 실습 5-A
> 1. `/init` 으로 CLAUDE.md 생성
> 2. 자신의 프로젝트에 맞게 CLAUDE.md 수정
> 3. `/skills` 로 사용 가능한 스킬 목록 확인
> 4. 커스텀 슬래시 커맨드 하나 만들어서 테스트

---

## Module 6 — 고급 기능 (MCP · 훅 · 플러그인)

### 6.1 MCP (Model Context Protocol)

MCP는 Claude Code가 **외부 도구 및 서비스에 연결**하는 표준 프로토콜입니다.

#### 주요 MCP 서버 예시
| MCP 서버 | 기능 |
|----------|------|
| Google Drive | 드라이브 파일 읽기/쓰기 |
| Gmail | 이메일 검색/작성 |
| Google Calendar | 일정 관리 |
| Slack | 메시지 전송/조회 |
| Notion | 노션 페이지 읽기/쓰기 |
| context7 | 라이브러리 공식 문서 검색 |
| Obsidian MCP | 옵시디언 볼트 직접 읽기/쓰기 |

#### MCP 설정 방법

`~/.claude/settings.json` (전역) 또는 `.claude/settings.json` (프로젝트):

```json
{
  "mcpServers": {
    "my-mcp": {
      "command": "npx",
      "args": ["-y", "@my-org/mcp-server"],
      "env": {
        "API_KEY": "your-key"
      }
    }
  }
}
```

#### MCP 연결 상태 확인
```bash
/doctor    # MCP 서버 연결 상태 포함 진단
```

### 6.2 훅 (Hooks)

훅은 특정 이벤트 발생 시 **자동으로 실행되는 쉘 커맨드**입니다.

#### 훅 이벤트 종류

| 이벤트 | 실행 시점 |
|--------|-----------|
| `PreToolUse` | 도구 실행 전 |
| `PostToolUse` | 도구 실행 후 |
| `UserPromptSubmit` | 사용자 입력 제출 시 |
| `SessionStart` | 세션 시작 시 |
| `Stop` | Claude가 응답 완료 시 |

#### 훅 설정 예시

```json
{
  "hooks": {
    "SessionStart": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "cat wiki/hot.md"
          }
        ]
      }
    ],
    "Stop": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "echo '세션 종료: $(date)' >> session-log.txt"
          }
        ]
      }
    ]
  }
}
```

#### 훅 설정하기
```bash
/update-config    # 설정 파일 수정 스킬 실행
```

### 6.3 플러그인 시스템

```bash
# 마켓플레이스 추가
claude plugin marketplace add [github-repo]

# 플러그인 설치
claude plugin install [plugin-name]@[marketplace]

# 설치된 플러그인 목록
claude plugin list

# 플러그인 업데이트
claude plugin update [plugin-name]

# 플러그인 제거
claude plugin remove [plugin-name]
```

#### 주목할 만한 플러그인

| 플러그인 | 기능 |
|----------|------|
| `claude-obsidian` | Obsidian 볼트 + Claude Code 지식 베이스 |
| `ultrareview` | 멀티에이전트 코드 리뷰 |
| `ultraplan` | 고급 계획 수립 |

### 6.4 서브에이전트 (Subagents)

복잡한 작업을 **병렬 처리**하기 위해 Claude가 자체적으로 서브에이전트를 생성합니다:

```
# 서브에이전트 예시
"src/, tests/, docs/ 를 동시에 분석해서 일관성 보고서 작성해줘"
→ Claude가 3개의 서브에이전트를 생성하여 병렬 처리
```

### 6.5 원격 제어 (Remote Control)

모바일/웹에서 Claude Code 세션을 제어할 수 있습니다:
- 채팅, 파일 전송, 명령 실행 가능
- 장시간 작업 모니터링

### 실습 6-A
> 1. `/update-config` 스킬로 SessionStart 훅 추가 (날짜/시간 출력)
> 2. Claude Code 재시작 후 훅 동작 확인
> 3. 플러그인 마켓플레이스에서 claude-obsidian 설치 시도

---

## Module 7 — VS Code 통합 사용법

### 7.1 VS Code 확장 특징

- **에디터 인라인 변경 제안**: diff 뷰로 변경 사항 확인 후 수락/거부
- **현재 파일 인식**: 열려 있는 파일을 자동으로 컨텍스트로 인식
- **텍스트 선택**: 에디터에서 선택한 텍스트를 Claude에게 직접 질문
- **터미널 통합**: VS Code 내장 터미널에서 Claude Code 실행

### 7.2 단축키

| 단축키 | 기능 |
|--------|------|
| `Ctrl+Esc` | Claude Code 패널 열기/닫기 |
| `Ctrl+N` | 새 대화 (설정에서 활성화) |
| `/terminal-setup` | 터미널 스크롤 감도 최적화 |

### 7.3 Accept/Reject 워크플로우

VS Code에서 Claude가 코드를 변경할 때:
1. Diff 뷰가 열림 (변경 전/후 비교)
2. 변경 내용 검토
3. Accept (수락) 또는 Reject (거부)
4. Accept 전에 직접 편집 가능

### 7.4 터미널 모드 vs 패널 모드

```
설정 → Claude Code: Use Terminal
```

- **패널 모드** (기본): 에디터 우측에 채팅 UI
- **터미널 모드**: 기존 터미널 스타일 인터페이스

### 7.5 LSP 통합

Claude Code는 VS Code의 언어 서버(LSP)와 통합되어:
- 실시간 진단 정보 활용
- 타입 오류, 린트 경고를 컨텍스트로 사용
- 더 정확한 코드 수정 제안

### 실습 7-A
> 1. VS Code에서 Claude Code 패널 열기 (Ctrl+Esc)
> 2. 파일에서 일부 텍스트 선택 후 "이 코드를 설명해줘" 요청
> 3. 간단한 수정 요청 → Diff 뷰에서 검토 → Accept/Reject 실습

---

## Module 8 — Obsidian + Claude Code 연동

### 8.1 연동 방식 3가지

#### 방식 1: claude-obsidian 플러그인 (권장)

```bash
# 마켓플레이스 추가
claude plugin marketplace add AgriciDaniel/claude-obsidian

# 플러그인 설치
claude plugin install claude-obsidian@claude-obsidian-marketplace
```

**핵심 스킬:**
| 커맨드 | 기능 |
|--------|------|
| `/wiki` | 볼트 설정 및 구조 생성 |
| `ingest [파일]` | 소스 파일을 위키 페이지로 변환 |
| `what do you know about X?` | 위키 기반 질의응답 |
| `lint the wiki` | 볼트 건강 검진 |
| `/save` | 현재 대화를 위키 노트로 저장 |
| `/autoresearch [주제]` | 자율 웹 조사 후 위키 저장 |

#### 방식 2: Obsidian Local REST API + MCP

Obsidian의 Local REST API 플러그인을 통해 MCP로 볼트에 직접 접근:

```json
{
  "mcpServers": {
    "obsidian": {
      "command": "npx",
      "args": ["-y", "mcp-obsidian"],
      "env": {
        "OBSIDIAN_API_KEY": "your-key",
        "OBSIDIAN_HOST": "http://localhost:27124"
      }
    }
  }
}
```

#### 방식 3: 직접 파일 접근

Obsidian 볼트는 그냥 폴더입니다. Claude Code를 볼트 폴더에서 실행하면 직접 `.md` 파일을 읽고 쓸 수 있습니다:

```bash
cd "C:/Users/bmk36/OneDrive/바탕 화면/Obsidian/AEON"
claude
```

### 8.2 LLM 위키 패턴 (Andrej Karpathy)

Claude Code + Obsidian의 핵심 패턴:

```
소스 입력 → Claude 처리 → 크로스레퍼런스된 위키 페이지 생성
         ↘ 질문 → 위키 기반 답변 (훈련 데이터가 아닌 내 지식)
```

**왜 RAG보다 나은가?**
- 1000페이지 이하에서 위키가 더 정확
- 모순 자동 감지 및 플래그
- 컨텍스트가 누적되어 복리 성장
- 구조화된 크로스레퍼런스

### 8.3 현재 AEON 볼트 상태 및 활용 계획

현재 AEON 볼트(`C:/Users/bmk36/OneDrive/바탕 화면/Obsidian/AEON`)는:
- Obsidian Git, Copilot, Dataview 등 플러그인 설치 완료
- copilot 커스텀 프롬프트 기본 세트 보유
- Claude Code 관련 노트는 미작성 상태

**권장 다음 단계:**
1. `/wiki` 로 볼트 내 위키 구조 초기화
2. Claude Code 학습 내용을 `ingest`로 위키화
3. `second-brain` 위키와 연계 고려

### 8.4 second-brain 위키 연계

현재 `/c/Users/bmk36/second-brain/` 에 개인 위키가 구축되어 있습니다:

```
second-brain/
├── CLAUDE.md     ← Claude Code 운영 규칙
├── wiki/         ← 위키 페이지
│   ├── me/       ← 정체성 페이지
│   └── ...
└── raw/          ← 소스 파일
```

이 second-brain에서 Claude Code 관련 지식을 별도 섹션으로 추가 가능:
```
wiki/tools/claude-code.md
wiki/tools/obsidian.md
wiki/tools/workflow.md
```

### 실습 8-A
> 1. AEON 볼트 폴더에서 `claude` 실행
> 2. "이 볼트의 구조를 분석하고 Claude Code 관련 노트 폴더를 만들어줘" 요청
> 3. 이번 커리큘럼의 핵심 내용을 볼트에 노트로 저장

---

## Module 9 — 실전 활용 패턴 & 베스트 프랙티스

### 9.1 일상 코딩 워크플로우

#### 아침 루틴 패턴
```
1. 프로젝트 폴더에서 claude 실행
2. "/recap" 으로 어제 작업 요약 확인
3. 오늘 할 일 목록 말하기
4. Claude가 태스크 분류 및 순서 제안
```

#### 버그 수정 패턴
```
1. 에러 메시지 + 스택 트레이스를 Claude에게 붙여넣기
2. Claude가 관련 파일 자동 탐색
3. Plan Mode로 수정 계획 검토
4. 승인 후 실행
5. 테스트 실행하여 검증
```

#### 새 기능 구현 패턴
```
1. "X 기능을 구현하고 싶어. 먼저 계획 세워줘" (/plan 모드)
2. 계획 검토 및 수정
3. 단계별 실행 승인
4. 각 단계 후 테스트
5. 코드 리뷰 요청
```

### 9.2 대형 코드베이스 탐색 전략

```bash
# 전체 구조 파악
"이 프로젝트의 아키텍처를 설명해줘"

# 특정 기능 찾기
"인증 관련 모든 파일과 함수를 찾아줘"

# 데이터 흐름 이해
"사용자 로그인 시 데이터가 어떻게 흐르는지 추적해줘"

# 의존성 파악
"이 함수를 변경하면 어디에 영향을 미치나?"
```

### 9.3 안전한 사용을 위한 원칙

| 원칙 | 실천 방법 |
|------|-----------|
| **백업 먼저** | 중요 작업 전 git commit |
| **Plan 검토** | 복잡한 작업은 /plan으로 검토 |
| **단계별 실행** | 한 번에 큰 변경 대신 작게 나눠서 |
| **테스트 동반** | 코드 변경 후 항상 테스트 실행 |
| **컨텍스트 체크** | /context로 컨텍스트 한도 확인 |

### 9.4 CLAUDE.md 작성 베스트 프랙티스

좋은 CLAUDE.md는 Claude가 더 정확하게 동작하게 합니다:

```markdown
# 프로젝트명

## 한 줄 요약
이 프로젝트가 무엇인지 한 문장으로

## 기술 스택
- 언어, 프레임워크, 라이브러리 목록

## 디렉토리 구조
중요 폴더와 그 역할

## 코딩 컨벤션
팀/개인 컨벤션 명시

## 금지 사항
하면 안 되는 것 명시 (e.g. 특정 파일 수정 금지)

## 자주 쓰는 명령어
빌드, 테스트, 배포 명령

## 참고 사항
Claude가 알아야 할 특이한 설정이나 패턴
```

### 9.5 비용 최적화

```bash
# 빠르고 저렴한 작업: Haiku 모델 + low effort
/model haiku
/effort low

# 복잡한 분석: Opus + high effort
/model opus
/effort high

# 컨텍스트 절약
/compact    # 긴 대화 요약
```

**비용 절감 팁:**
- 단순 질문 → Haiku 사용
- 복잡 설계 → Opus 사용, 나머지는 Sonnet
- `/compact`를 주기적으로 실행
- 불필요한 파일 참조 최소화

### 9.6 흔한 실수와 해결책

| 실수 | 해결책 |
|------|--------|
| 컨텍스트 초과 | `/compact` 또는 `/clear` |
| 원하지 않는 변경 | `/rewind` 또는 git revert |
| Claude가 루프에 빠짐 | `/clear` 후 다시 시작 |
| 느린 응답 | `/effort low` 또는 Haiku 모델 |
| 잘못된 파일 참조 | @ 멘션으로 명시적 지정 |

### 실습 9-A
> 1. 실제 작업 중인 프로젝트에서 버그 수정 패턴 실습
> 2. CLAUDE.md를 자신의 프로젝트에 맞게 완성
> 3. `/compact` 전/후 컨텍스트 사용량 비교

---

## Module 10 — 학습 로드맵 & 다음 단계

### 10.1 3단계 학습 로드맵

#### 1단계: 기초 (1-2주)
- [ ] 설치 및 로그인 완료
- [ ] 기본 대화 및 파일 수정 실습
- [ ] CLAUDE.md 작성
- [ ] 슬래시 커맨드 10개 이상 사용해보기
- [ ] VS Code 확장 활용

#### 2단계: 응용 (2-4주)
- [ ] Plan Mode 정기 활용
- [ ] 커스텀 슬래시 커맨드 3개 이상 생성
- [ ] 훅(Hooks) 1개 이상 설정
- [ ] MCP 서버 1개 이상 연결
- [ ] 실제 프로젝트에 적용

#### 3단계: 자동화 (4-8주)
- [ ] 플러그인 활용 (claude-obsidian 등)
- [ ] 복잡한 훅 파이프라인 구성
- [ ] 서브에이전트 활용 이해
- [ ] 나만의 워크플로우 자동화
- [ ] Obsidian 볼트와의 완전 통합

### 10.2 심화 학습 자료

| 자료 | 위치 |
|------|------|
| 공식 문서 | code.claude.com/docs |
| VS Code 확장 문서 | code.claude.com/docs/en/vs-code |
| MCP 프로토콜 | modelcontextprotocol.io |
| claude-obsidian | github.com/AgriciDaniel/claude-obsidian |
| 체인지로그 | `~/.claude/cache/changelog.md` |

### 10.3 커뮤니티 및 피드백

- **이슈 리포트**: github.com/anthropics/claude-code/issues
- **업데이트 확인**: `claude update`
- **변경사항 확인**: `/version` 또는 changelog.md

### 10.4 커리큘럼 다음 버전 계획 (ver.1.002)

이 커리큘럼은 ver.1.001 임시 초안입니다. 다음 버전에서 보완할 내용:

- [ ] 실습 예제 코드 추가
- [ ] 스크린샷/GIF 삽입
- [ ] 한국어 사용 사례 추가
- [ ] 팀 협업 시나리오
- [ ] Obsidian 볼트 노트 내용 반영 (현재 볼트 내 노트 없음)
- [ ] 평가 문제 및 퀴즈 추가
- [ ] 실제 프로젝트 케이스 스터디

---

## 부록 — 주요 단축키 & 명령어 레퍼런스

### A.1 터미널 단축키

| 단축키 | 기능 |
|--------|------|
| `Ctrl+C` | 현재 작업 취소 |
| `Ctrl+L` | 화면 리드로우 + 입력 초기화 |
| `Ctrl+U` | 입력 전체 삭제 (Ctrl+Y로 복원) |
| `Ctrl+_` | 언두 (Ctrl+Z 와 동일) |
| `Ctrl+A` | 줄 시작으로 이동 |
| `Ctrl+E` | 줄 끝으로 이동 |
| `Shift+↑/↓` | 뷰포트 스크롤 |
| `[` | 응답을 스크롤백으로 덤프 |
| `v` | 응답을 에디터에서 열기 |

### A.2 VS Code 단축키

| 단축키 | 기능 |
|--------|------|
| `Ctrl+Esc` | Claude Code 패널 토글 |
| `Ctrl+N` | 새 대화 (설정 필요) |

### A.3 주요 슬래시 커맨드 요약

```
/resume     이전 세션 이어서
/clear      새 대화 시작
/compact    컨텍스트 압축
/plan       계획 모드
/model      모델 선택
/effort     노력 레벨
/config     설정
/doctor     환경 진단
/init       CLAUDE.md 생성
/review     PR 리뷰
/save       대화 저장
/skills     스킬 목록
/plugin     플러그인 관리
```

### A.4 환경 변수

```bash
ANTHROPIC_API_KEY         # API 키
CLAUDE_CODE_USE_POWERSHELL_TOOL  # PowerShell 도구 활성화
DISABLE_TELEMETRY         # 텔레메트리 비활성화
ENABLE_PROMPT_CACHING_1H  # 1시간 프롬프트 캐시
CLAUDE_CONFIG_DIR         # 설정 디렉토리 경로
OTEL_LOG_TOOL_DETAILS     # OpenTelemetry 상세 로깅
```

---

## 변경 이력

| 버전 | 날짜 | 내용 |
|------|------|------|
| 1.001 | 2026-04-22 | 초안 작성. 옵시디언 AEON 볼트 탐색 기반으로 Claude Code 공식 문서 및 설치 파일에서 교육 내용 통합 |

---

> **참고**: 이 커리큘럼은 AEON 옵시디언 볼트를 탐색하여 수집된 정보와 Claude Code 공식 문서(버전 2.1.114+)를 바탕으로 작성된 1차 임시 초안입니다. 볼트 내 Claude Code 전용 노트가 없어 공식 문서와 설치 파일을 기반으로 작성되었으며, 향후 실습 내용이 추가될 예정입니다.
