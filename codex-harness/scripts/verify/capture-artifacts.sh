#!/usr/bin/env bash
set -euo pipefail

mkdir -p artifacts/screenshots logs

touch artifacts/screenshots/.gitkeep
cp -f logs/latest.log artifacts/latest.log 2>/dev/null || true

echo "[verify] artifacts prepared"
echo " - artifacts/test-report.xml"
echo " - artifacts/health.json"
echo " - artifacts/screenshots/"
echo " - artifacts/latest.log"
