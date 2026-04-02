---
name: verify
description: Run tests, boot app when needed, collect logs and screenshots, and summarize verification artifacts for PR readiness.
---

# Verify Skill

## 절차
1. 테스트 실행 (`scripts/verify/run-tests.sh`)
2. 앱 실행 확인 (`scripts/verify/run-app.sh`)
3. 아티팩트 수집 (`scripts/verify/capture-artifacts.sh`)
4. 결과를 PR-ready 섹션으로 요약

## 필수 산출물
- `artifacts/test-report.xml`
- `artifacts/health.json`
- `logs/latest.log`
- 필요 시 `artifacts/screenshots/*`
