#!/usr/bin/env bash

set -x -eu -o pipefail
# Uncomment to step through this script:
# trap '(read -p "[$BASH_SOURCE:$LINENO] $BASH_COMMAND")' DEBUG

source ./env.sh

cd "$DEPLOY_TARGET_CI_DIR"

for dir in */; do
    cd "$dir"

    # Whatever commands you'd like here. For example:
    # 
    # ```
    # rm -rf .yarn
    # ```

    cd "$DEPLOY_TARGET_CI_DIR"
done
