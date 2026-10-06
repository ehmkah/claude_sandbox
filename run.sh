#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

export WORKSPACE_DIR="${1:-$PWD}"

docker compose -f "$SCRIPT_DIR/docker-compose.yml" run --rm claude-box
