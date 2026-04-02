#!/usr/bin/env bash
set -euo pipefail

mkdir -p artifacts logs
NOW="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"

cat > artifacts/health.json <<JSON
{
  "status": "unknown",
  "checkedAt": "$NOW",
  "note": "Hook your app-specific health check here"
}
JSON

echo "[verify] health snapshot written to artifacts/health.json" | tee -a logs/latest.log
