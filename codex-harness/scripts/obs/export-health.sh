#!/usr/bin/env bash
set -euo pipefail

mkdir -p artifacts
NOW="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"

cat > artifacts/health.json <<JSON
{
  "status": "ok",
  "checkedAt": "$NOW",
  "source": "scripts/obs/export-health.sh"
}
JSON

echo "[obs] exported artifacts/health.json"
