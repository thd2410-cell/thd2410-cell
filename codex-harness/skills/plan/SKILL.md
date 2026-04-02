---
name: plan
description: Break down a coding task into scoped steps, identify impacted files, and create an execution plan in docs/exec-plans/active.
---

# Plan Skill

## 목적
작업을 작고 검증 가능한 블록으로 분해하고 실행 계획 문서를 만든다.

## 절차
1. 요구사항을 1~2문장으로 재정의한다.
2. 영향 범위를 파일 단위로 나눈다.
3. 선행 읽기 문서를 지정한다.
4. 검증 명령을 미리 정의한다.
5. `docs/exec-plans/active/<date>-<task>.md`를 생성한다.

## 출력 형식
- Goal
- Scope (in / out)
- Files to read first
- Implementation steps
- Verification commands
- Risks / rollback
