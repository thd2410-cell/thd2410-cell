---
name: implement
description: Execute planned code changes in small increments and keep changes reviewable with tests and clear commit boundaries.
---

# Implement Skill

## 절차
1. Plan 문서를 기준으로 작은 단위 변경부터 적용.
2. 변경 후 즉시 로컬 테스트/정적 검사를 실행.
3. 실패 시 원인과 복구 방법을 기록.
4. 커밋 단위는 리뷰 가능한 크기로 유지.

## 규칙
- 계획 범위를 벗어나면 plan을 먼저 갱신.
- 리팩터링과 기능 변경을 한 커밋에 섞지 않는다.
