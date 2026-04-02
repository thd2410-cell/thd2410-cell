#!/usr/bin/env bash
set -euo pipefail

TASK_NAME="${1:-}"
if [[ -z "$TASK_NAME" ]]; then
  echo "Usage: $0 <task-name>"
  exit 1
fi

ROOT_DIR="$(git rev-parse --show-toplevel)"
BASE_BRANCH="$(git -C "$ROOT_DIR" rev-parse --abbrev-ref HEAD)"
WT_DIR="$ROOT_DIR/.worktrees/$TASK_NAME"
PORT_FILE="$WT_DIR/.port"

mkdir -p "$ROOT_DIR/.worktrees"
git -C "$ROOT_DIR" worktree add "$WT_DIR" -b "$TASK_NAME" "$BASE_BRANCH"

PORT="$(python3 - <<'PY'
import random
print(random.randint(4100, 4999))
PY
)"

mkdir -p "$WT_DIR/logs" "$WT_DIR/artifacts/screenshots"
printf '%s\n' "$PORT" > "$PORT_FILE"

echo "[worktree] created: $WT_DIR"
echo "[worktree] base branch: $BASE_BRANCH"
echo "[worktree] assigned port: $PORT"
echo "[worktree] logs: $WT_DIR/logs"
echo "[worktree] artifacts: $WT_DIR/artifacts"
