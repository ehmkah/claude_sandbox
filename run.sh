#!/usr/bin/env bash
set -euo pipefail

WORKSPACE_DIR="${1:-$PWD}"

docker volume create claude-data >/dev/null

docker run -it --rm \
  -e ANTHROPIC_API_KEY \
  -v claude-data:/root/.claude \
  -v "$WORKSPACE_DIR":/workspace \
  claude-box
