# codex-harness

Codex가 장시간/반복적으로 안정적으로 일하도록 돕는 **Harness Toolkit**입니다.

핵심 철학은 "스킬 모음"보다 **실행 환경**입니다.

- one task = one worktree
- 짧은 AGENTS.md + 구조화된 docs/
- plan → implement → self-review → verify → pr-ready 루프
- 로그/테스트/스크린샷/헬스 아티팩트 표준화

## MVP 포함 요소

- `setup`: 템플릿 구조로 초기화
- `skills/plan`: 작업 분해 + 실행 계획 문서 생성
- `skills/verify`: 테스트/앱 실행/아티팩트 수집
- `skills/review`: diff 기반 리스크 점검
- `scripts/worktree`: task별 격리 환경 시작/정리

## 빠른 시작

```bash
# 1) 레포 루트에서
cp codex-harness/templates/AGENTS.md.tmpl AGENTS.md
cp codex-harness/templates/ARCHITECTURE.md.tmpl ARCHITECTURE.md

# 2) docs 뼈대 생성
mkdir -p docs/{design-docs,exec-plans/{active,completed},product-specs,references,generated}

# 3) worktree 시작
bash codex-harness/scripts/worktree/start.sh feature/sample-task

# 4) verify 실행
bash codex-harness/scripts/verify/run-tests.sh
bash codex-harness/scripts/verify/capture-artifacts.sh
```

## 디렉터리

```text
codex-harness/
  templates/
  skills/
  scripts/
```
