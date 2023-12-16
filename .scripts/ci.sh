#!/usr/bin/env bash

set -x -eu -o pipefail
# Uncomment to step through this script:
trap '(read -p "[$BASH_SOURCE:$LINENO] $BASH_COMMAND")' DEBUG

source ./env.sh

cd "$DEPLOY_TARGET_CI_DIR"

for dir in */; do
    cd "$dir"

    yarn install
    yarn rw prisma migrate dev
    yarn rw build
    # yarn rw lint
    # yarn rw type-check
    yarn rw check
    yarn rw test --no-watch

    # TODO: drop the databases after.
    # ```
    # dropdb deploy-target-*
    # dropdb deploy-target-*-test
    # ```

    cd "$DEPLOY_TARGET_CI_DIR"
done
