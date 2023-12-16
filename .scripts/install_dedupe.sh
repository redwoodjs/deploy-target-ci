#!/usr/bin/env bash

set -x -eu -o pipefail

# Uncomment to step through this script.
# trap '(read -p "[$BASH_SOURCE:$LINENO] $BASH_COMMAND")' DEBUG

cd ../
starting_dir=$(pwd)

for dir in */; do
    cd "$dir" || exit 1

    yarn install
    yarn dedupe

    cd "$starting_dir" || exit 1
done
