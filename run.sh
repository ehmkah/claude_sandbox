#!/usr/bin/env bash
set -euo pipefail

docker run -it --rm -e ANTHROPIC_API_KEY claude-box
