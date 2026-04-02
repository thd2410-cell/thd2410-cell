#!/usr/bin/env bash
set -euo pipefail

TASK_NAME="${1:-}"
if [[ -z "$TASK_NAME" ]]; then
  echo "Usage: $0 <task-name>"
  exit 1
fi

ROOT_DIR="$(git rev-parse --show-toplevel)"
WT_DIR="$ROOT_DIR/.worktrees/$TASK_NAME"

if [[ ! -d "$WT_DIR" ]]; then
  echo "[worktree] not found: $WT_DIR"
  exit 1
fi

git -C "$ROOT_DIR" worktree remove "$WT_DIR" --force
if git -C "$ROOT_DIR" show-ref --verify --quiet "refs/heads/$TASK_NAME"; then
  git -C "$ROOT_DIR" branch -D "$TASK_NAME"
fi

echo "[worktree] removed: $WT_DIR"
