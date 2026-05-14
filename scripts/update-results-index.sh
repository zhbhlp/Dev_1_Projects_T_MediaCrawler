#!/usr/bin/env bash
set -euo pipefail

if [[ -f "$HOME/.config/cc/env.sh" ]]; then
  # shellcheck disable=SC1090
  source "$HOME/.config/cc/env.sh"
fi
if [[ -f "$HOME/.config/cc/env.local.sh" ]]; then
  # shellcheck disable=SC1090
  source "$HOME/.config/cc/env.local.sh"
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
WORKSPACE_ROOT="${CC_WORKSPACE_ROOT:-$(cd "$SCRIPT_DIR/../../.." && pwd)}"
GENERIC_SCRIPT="$WORKSPACE_ROOT/cc-memory/scripts/update-project-results-index.sh"

export PROJECT_RESULTS_MAINTAINER_CMD="scripts/update-results-index.sh"
export PROJECT_RESULTS_ROOT="项目成果库"
export PROJECT_RESULTS_INDEX_FILE="项目成果库/Index.md"

cd "$PROJECT_ROOT"
exec "$GENERIC_SCRIPT" "$PROJECT_ROOT"
