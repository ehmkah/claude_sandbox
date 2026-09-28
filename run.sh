#!/usr/bin/env bash
set -euo pipefail

export WORKSPACE_DIR="${1:-$PWD}"

docker compose run --rm claude-box
