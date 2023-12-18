#!/usr/bin/env bash

: "${RWFW_PATH?"Error: \`RWFW_PATH\` not set"}"

SCRIPT_DIR=$(realpath "$(dirname "$0")")
DEPLOY_TARGET_CI_DIR="$(cd "$SCRIPT_DIR/.." || exit 1; pwd)"

export SCRIPT_DIR
export DEPLOY_TARGET_CI_DIR
