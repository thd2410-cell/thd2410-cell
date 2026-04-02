#!/usr/bin/env bash
set -euo pipefail

LOG_FILE="${1:-logs/latest.log}"

touch "$LOG_FILE"
tail -n 200 -f "$LOG_FILE"
