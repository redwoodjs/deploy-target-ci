#!/bin/bash

# To run this script:
# 
# ```bash
# cd baremetal
# ../v6.sh
# ```

# Confirm every like before it runs.
trap '(read -p "[$BASH_SOURCE:$LINENO] $BASH_COMMAND")' DEBUG

# See https://community.redwoodjs.com/t/wip-redwood-v6-0-0-rc/5044.
yarn install

yarn rw upgrade -t rc
yarn rw --version

yarn rw lint --fix

yarn rw setup vite

npx @redwoodjs/codemods@canary update-dev-fatal-error-page
npx @redwoodjs/codemods@canary convert-js-to-jsx

npx @redwoodjs/codemods@canary process-env-dot-notation
yarn rw lint --fix

npx @redwoodjs/codemods@canary replace-component-svgs
yarn rw lint --fix

npx @redwoodjs/codemods@canary update-theme-config

npx storybook@next migrate csf-2-to-3 --glob="web/**/*.stories.{js,tsx}"

yarn rw sb