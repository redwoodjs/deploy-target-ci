#!/usr/bin/env bash

# TODO: this script should regenerate a deploy target CI project from scratch.

# Here's the working list...
# - [ ] update `DATABASE_URL` and `TEST_DATABASE_URL` in `.env.defaults`
# - [ ] update `.nvmrc` (if working from main)
# - [ ] update `yarnPath` in `.yarnrc.yml`; maybe just `yarn set version`?
# - [ ] update `graphql.config.js`
# - [ ] update `package.json` (`react`, `@types/react`)

# For baremetal specifically...
# - [ ] install node-ssh; write deploy.toml, ecosystem.config.js (maybe just `yarn rw setup deploy baremetal`?)
