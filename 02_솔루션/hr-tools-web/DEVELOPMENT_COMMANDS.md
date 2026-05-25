# AEON HR OS Development Commands

이 문서는 Claude Code, Codex, Cursor, 기타 AI 개발 어시스턴트에 투입할 수 있는 명령어 모음이다.  
모든 명령은 `AEON_HR_OS_CONSTITUTION.md`의 철학을 기준으로 수행되어야 한다.

---

## 1. 프로젝트 철학 주지 명령어

```
AEON_HR_OS_CONSTITUTION.md를 먼저 읽어라.

코드를 변경하기 전에, 요청된 작업이 AEON HR OS 철학에 어떻게 맞는지 요약하라:
Information → Event → Synapse → Workflow → Decision → Record → Learning

이 작업을 고립된 CRUD 기능으로 구현하지 마라.
코딩 전에 HR 정보, HR 사건, 하위 워크플로우, 사람의 판단 지점, 기록 구조를 먼저 식별하라.
```

---

## 2. 현재 구조 점검 명령어

```
현재 코드베이스를 분석하고 아키텍처가 다음 AEON HR OS 원칙을 지원하는지 확인하라:

1. 정보 우선 데이터 모델링
2. 이벤트 기반 상태 변경
3. HR Synapse Bus 또는 동등한 이벤트 디스패치 계층
4. 주요 HR 이벤트 후 워크플로우 생성
5. 사람 판단을 위한 Decision Log
6. 최종 사람 결정과 분리된 AI 제안
7. Event Log와 감사 추적

반환:
- 현재 상태
- 누락된 부분
- 권장 구현 순서
- 변경이 필요한 파일
- 필요한 데이터베이스 마이그레이션
```

---

## 3. HR Event 정의 명령어

```
AEON HR OS의 핵심 HR 이벤트 모델을 설계하라.

다음 이벤트를 포함하라:
- RecruitmentRequestApproved
- JobDescriptionUpdated
- ApplicantHired
- EmployeeJoined
- EmployeeTransferred
- EmployeeEvaluationCompleted
- CompensationChanged
- LeaveStarted
- LeaveEnded
- EmployeeResigned

각 이벤트에 대해 정의하라:
1. 이벤트 이름
2. 트리거 조건
3. 페이로드 스키마
4. 소스 모듈
5. 구독 모듈
6. 하위 워크플로우
7. 사람의 판단 지점
8. 필요한 로그
9. AI 개입 기회

결과를 TypeScript 인터페이스와 데이터베이스 스키마 제안으로 출력하라.
```

---

## 4. Event Log 테이블 설계 명령어

```
범용 HR Event Log를 위한 데이터베이스 마이그레이션을 생성하라.

테이블은 다음을 지원해야 한다:
- id
- event_type
- source_module
- source_entity_type
- source_entity_id
- employee_id (nullable)
- applicant_id (nullable)
- job_id (nullable)
- organization_id (nullable)
- payload (JSON)
- triggered_by
- triggered_at
- correlation_id
- status
- error_message (nullable)
- created_at

또한 이벤트 로그 생성 및 조회를 위한 TypeScript 타입과 리포지토리 함수를 생성하라.
```

---

## 5. HR Synapse Bus 구현 명령어

```
기본 HR Synapse Bus를 구현하라.

요구사항:
1. 모듈이 HR 이벤트를 발행할 수 있다.
2. 모듈이 HR 이벤트를 구독할 수 있다.
3. 각 이벤트는 Event Log에 기록된다.
4. 구독자는 하위 워크플로우 태스크를 생성할 수 있다.
5. 실패는 명시적으로 필요하지 않는 한 원래 트랜잭션을 차단하지 않고 로깅된다.
6. 이벤트 페이로드는 타입이 지정되어야 한다.
7. ApplicantHired와 JobDescriptionUpdated 이벤트의 발행 및 구독 테스트를 추가하라.

구현을 단순하고 확장 가능하게 유지하라.
```

---

## 6. ApplicantHired 이벤트 구현 명령어

```
ApplicantHired 이벤트 흐름을 구현하라.

지원자가 최종 채용으로 표시될 때:
1. 지원자 상태를 FINAL_HIRED로 업데이트한다.
2. HR Synapse에 ApplicantHired 이벤트를 발행한다.
3. Event Log에 이벤트를 기록한다.
4. 온보딩 태스크를 생성한다.
5. 근로계약서 초안 태스크를 생성한다.
6. 직원 마스터 생성 태스크를 준비한다.
7. 30/60/90일 온보딩 검토 태스크를 예약한다.
8. 담당 HR 관리자에게 알림을 보낸다.

채용 코드를 온보딩 코드에 직접 결합하지 마라.
HR Synapse Bus를 사용하라.
```

---

## 7. JobDescriptionUpdated 이벤트 구현 명령어

```
JobDescriptionUpdated 이벤트 흐름을 구현하라.

직무 설명이 업데이트될 때:
1. 새 직무 설명 버전을 저장한다.
2. JobDescriptionUpdated 이벤트를 발행한다.
3. Event Log에 이벤트를 기록한다.
4. 다음에 대한 검토 태스크를 생성한다:
   - 채용 공고 업데이트
   - 이력서 심사 기준 업데이트
   - 면접 질문 업데이트
   - 온보딩 태스크 업데이트
   - 평가 KPI 업데이트
5. 각 검토 태스크에 AI 제안 플레이스홀더를 추가한다.

하위 모듈을 자동으로 덮어쓰지 마라.
검토 태스크를 생성하고 사람의 승인을 요구하라.
```

---

## 8. Decision Log 설계 명령어

```
Decision Log 시스템을 설계하고 구현하라.

Decision Log는 다음을 기록해야 한다:
- decision_id
- decision_type
- related_event_id
- source_module
- target_entity_type
- target_entity_id
- ai_suggestion (nullable)
- human_decision
- decision_reason
- approved_by
- approved_at
- evidence (JSON)
- created_at

다음에 사용하라:
- 경력 인정
- 보상 협의
- 최종 채용 승인
- 평가 등급 조정
- 근태 예외
- 퇴직 처리

데이터베이스 마이그레이션, TypeScript 타입, API 엔드포인트, 기본 UI 컴포넌트를 생성하라.
```

---

## 9. AI 개입 지점 정의 명령어

```
AEON HR OS 워크플로우를 분석하고 AI가 개입해야 할 위치를 정의하라.

각 모듈에 대해 다음을 식별하라:
1. AI 작성 보조
2. AI 분류
3. AI 위험 감지
4. AI 추천
5. AI 요약
6. AI 의사결정 지원
7. 사람 승인 요구사항
8. AI 컨텍스트에 필요한 데이터
9. 반드시 기록되어야 하는 출력

모듈:
- 조직관리
- 직무관리
- 확보관리 (채용)
- 온보딩
- 인사마스터
- 근태관리
- 평가관리
- 보상관리
- 이직관리
- Compliance
```

---

## 10. 채용 → 온보딩 → 인사마스터 연결 명령어

```
첫 번째 수직 Synapse 흐름을 구현하라:
채용 → 온보딩 → 인사마스터

흐름:
1. RecruitmentRequestApproved가 채용 워크플로우를 생성한다.
2. ApplicantHired가 온보딩 워크플로우를 생성한다.
3. OnboardingCompleted가 직원 마스터 생성을 준비한다.
4. EmployeeJoined가 직원 마스터와 관련 HR 모듈을 활성화한다.

이벤트 기반 아키텍처를 사용하라.
직접적인 모듈 의존성을 하드코딩하지 마라.
모든 주요 전환은 Event Log 항목을 생성해야 한다.
사람의 승인 지점은 Decision Log 항목을 생성해야 한다.
```

---

## 11. Workflow Task 시스템 설계 명령어

```
범용 HR Workflow Task 시스템을 설계하라.

태스크는 다음을 지원해야 한다:
- task_id
- task_type
- title
- description
- related_event_id
- source_module
- target_module
- assigned_to
- due_date
- status
- priority
- ai_suggestion (nullable)
- human_decision_required (boolean)
- completed_at (nullable)
- created_at

생성하라:
1. 데이터베이스 마이그레이션
2. TypeScript 타입
3. 태스크 생성 서비스
4. API 엔드포인트
5. 기본 UI 목록
6. 테스트

이 태스크 시스템은 HR Synapse 구독자가 사용할 수 있어야 한다.
```

---

## 12. HR Memory 구현 명령어

```
HR Memory를 학습을 위한 저장 계층으로 설계하라.

HR Memory는 다음을 결합해야 한다:
- Event Log
- Workflow Log
- Decision Log
- AI Suggestion Log
- Human Feedback Log
- Final Outcome Log

다음을 보여주는 아키텍처 제안을 생성하라:
1. 필요한 테이블
2. 관계
3. AI가 컨텍스트를 검색하는 방법
4. 미래 에이전트가 과거 결정에서 학습하는 방법
5. 개인정보 및 권한 고려사항
6. 감사 요구사항
```

---

## 13. 권한 체계 명령어

```
AEON HR OS의 역할 기반 접근 제어를 설계하라.

사용자를 다음으로 구분하라:
- 시스템 관리자 (Platform Operator)
- HR 관리자 (HR Admin)
- HR 매니저 (HR Manager)
- 채용 담당자 (Recruiter)
- 근태 관리자
- 평가 관리자
- 보상 관리자
- 부서 관리자 (Department Manager)
- 직원 (Employee)
- 감사자 (Auditor)

각 역할에 대해 정의하라:
1. 접근 가능한 모듈
2. 읽기 권한
3. 쓰기 권한
4. 승인 권한
5. AI 기능 접근
6. 민감 데이터 제한

또한 페이지 수준 권한 매트릭스를 제안하라.
```

---

## 14. 관리자/사용자 사이드바 구조 명령어

```
사이드바를 관리자 도메인과 사용자 도메인으로 리팩토링하라.

관리자 도메인 (고객사 HR 담당자용):
- 조직관리
- 직무관리
- 확보관리 (채용)
- 온보딩 관리
- 인사마스터
- 근태관리
- 평가관리
- 보상관리
- 이직관리
- 정책 관리
- Compliance
- Analytics
- 설정

사용자 도메인 (직원용):
- 내 프로필
- 내 근태
- 휴가 신청
- 연장근로 신청
- 내 평가
- 내 문서
- 알림

설계자 도메인 (AEON 내부 전용):
- HR Synapse (이벤트 맵, 에이전트 액션 등)
- AEON HQ 조직도
- QA Gate
- Tenant 관리
- BMAD 기획단

권한 기반 가시성을 사용하라.
권한 없는 페이지는 표시하지 마라.
```

---

## 15. Compliance Synapse 명령어

```
Compliance Synapse를 설계하라.

다음 HR 컴플라이언스 리스크를 감지해야 한다:
- 과도한 초과근무
- 누락된 근태 기록
- 육아기 단축근무 초과근무
- 연차 사용 촉진 리스크
- 기간제 계약 만료
- 수습 검토 기한
- 퇴직 정산 지연
- 누락된 근로계약서
- 필수 교육 누락

각 리스크에 대해 정의하라:
1. 트리거 조건
2. 소스 데이터
3. 이벤트 이름
4. 알림 수신자
5. 필요한 워크플로우 태스크
6. AI 요약
7. 사람 결정 요구 여부
8. 감사 로그
```

---

## 16. 개발 전 자체검토 명령어

```
구현 전에 설계 검토를 수행하라.

확인하라:
1. 이 기능은 정보 우선인가?
2. HR 이벤트를 생성하거나 반응하는가?
3. HR Synapse를 통해 연결되어 있는가?
4. 사람의 판단 지점이 명시적인가?
5. 최종 판단이 기록되는가?
6. AI가 사람의 승인과 분리되어 있는가?
7. 기능이 감사 가능한가?
8. 출력이 미래 학습 재료가 될 수 있는가?

어떤 답이라도 아니오이면, 코딩 전에 설계를 수정하라.
```

---

## 17. 코드 리뷰 명령어

```
구현된 코드를 AEON_HR_OS_CONSTITUTION.md 기준으로 검토하라.

확인하라:
1. 과도하게 고립된 CRUD 구현
2. 누락된 이벤트 발행
3. 누락된 Event Log
4. 누락된 Decision Log
5. 직접 모듈 결합
6. 누락된 권한 확인
7. AI 출력이 최종 결정으로 처리되는 경우
8. 누락된 감사 추적
9. 약한 타입 정의
10. 불완전한 테스트

반환하라:
- 심각한 문제
- 권장 수정사항
- 리팩토링 계획
- 테스트 추가사항
```

---

## 18. 빌드 및 커밋 명령어

```bash
cd frontend && npm run build
cd .. && git status
git add [변경된 파일들]
git commit -m "feat: [AEON HR OS 아키텍처 반영 내용 요약]"
git push origin master
```

---

## 19. 커밋 메시지 규칙

```
AEON HR OS 아키텍처를 반영하는 커밋 메시지를 사용하라.

예시:
- feat: add universal HR event log
- feat: implement HR Synapse event bus
- feat: add ApplicantHired event workflow
- feat: add JobDescriptionUpdated review workflow
- feat: create decision log foundation
- feat: add HR workflow task system
- refactor: decouple recruitment and onboarding through Synapse
- chore: document AEON HR OS development constitution
```

---

## 20. 최종 점검 명령어

```
최종 아키텍처 감사를 수행하라.

현재 시스템에 다음이 있는지 확인하라:

1. 구조화된 HR 정보 레이어
2. 정의된 HR 이벤트 타입
3. HR Synapse 이벤트 버스
4. Event Log 영속성
5. Workflow Task 생성
6. Decision Log 영속성
7. AI 제안 레이어
8. 사람 승인 제어
9. 권한 기반 접근
10. 감사 가능한 이력
11. 채용 → 온보딩 → 인사마스터 수직 흐름
12. 미래 HR Agent와 HR Digital Twin을 위한 기반

반환하라:
- 완성도 퍼센트
- 아키텍처 리스크
- 즉각적인 다음 태스크
- 권장 2주 로드맵
```

---

*Last updated: 2026-05-25*  
*Authority: 배명규 대표, AEON*
