#!/usr/bin/env bash

set -x -eu -o pipefail
# Uncomment to step through this script:
# trap '(read -p "[$BASH_SOURCE:$LINENO] $BASH_COMMAND")' DEBUG

source ./env.sh

if [ -z "${1:-}" ]; then
    echo "Error: No compare target provided."
    exit 1
fi

if [ -z "${2:-}" ]; then
    echo "Error: No project provided."
    exit 1
fi

COMPARE_TARGET=$1
PROJECT=$2

cd "$RWFW_PATH"
# TODO: Switch to `next`? The test project fixture on `main` has canary changes.
git checkout main
git pull origin main --rebase

COMPARE_TARGET_DIR="$DEPLOY_TARGET_CI_DIR/compare-target"

if [ -d "$COMPARE_TARGET_DIR" ]; then
  rm -rf "$COMPARE_TARGET_DIR"
fi

case $COMPARE_TARGET in
    "test-project")
        cp -r "$RWFW_PATH/__fixtures__/test-project" "$COMPARE_TARGET_DIR"
        ;;
    "crwa")
        yarn create redwood-app "$COMPARE_TARGET_DIR" -y
        ;;
    *)
        echo "Error: Invalid compare target."
        exit 1
        ;;
esac

bcompare "$COMPARE_TARGET_DIR" "$DEPLOY_TARGET_CI_DIR/$PROJECT"
