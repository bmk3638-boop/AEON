---
type: decision
title: "passlib → bcrypt 직접 사용"
status: active
date: 2026-05-05
owner: 배명규
tags: [기술결정, 인증, bcrypt]
---

# 결정: passlib 제거, bcrypt 직접 사용

## 문제

회원가입 시 `가입 중...`에서 무한 대기.
`passlib[bcrypt]` 1.7.4 + `bcrypt` 4.x 버전 충돌로 `hash_password()` 호출에서 프로세스가 멈춤.

## 결정

`passlib` 의존성 제거, `bcrypt` 라이브러리 직접 사용.

```python
# 변경 전
_pwd = CryptContext(schemes=["bcrypt"], deprecated="auto")
def hash_password(plain): return _pwd.hash(plain)  # 멈춤

# 변경 후
import bcrypt
def hash_password(plain): return bcrypt.hashpw(plain.encode(), bcrypt.gensalt()).decode()
def verify_password(plain, hashed): return bcrypt.checkpw(plain.encode(), hashed.encode())
```

## 영향

- `requirements.txt`: `passlib[bcrypt]>=1.7.4` + `bcrypt>=3.2.0,<4.0.0` → `bcrypt>=4.0.0`
- `auth/security.py` 수정

## 결과

✅ 회원가입 정상 완료 확인
