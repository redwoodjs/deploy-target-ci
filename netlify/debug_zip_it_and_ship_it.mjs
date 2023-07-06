/* eslint-env node */

import fs from 'node:fs'
import path from 'node:path'

import { zipFunctions } from '@netlify/zip-it-and-ship-it'

const API_DIST_PATH = path.join('api', 'dist', 'functions')

async function main() {
  if (!fs.existsSync(API_DIST_PATH)) {
    console.error(
      `No functions found at ${API_DIST_PATH}. Run \`yarn rw build api\` first.`
    )
    process.exitCode = 1
    return
  }

  await zipFunctions(API_DIST_PATH, 'zippedApiFunctions', {
    archiveFormat: 'zip',
  })
}

main()

// How to use this script. Given the following error...
//
// ```
// Error: In file "/Users/dom/projects/redwood/deploy-target-ci/netlify/api/dist/functions/graphql.js"
// Cannot find module 'ioredis'
// Require stack:
// - /Users/dom/projects/redwood/deploy-target-ci/netlify/node_modules/@netlify/zip-it-and-ship-it/dist/runtimes/node/bundlers/zisi/resolve.js
//     at Module._resolveFilename (node:internal/modules/cjs/loader:1077:15)
//     at Function.resolve (node:internal/modules/cjs/helpers:116:19)
//     at resolvePathFollowSymlinks (file:///Users/dom/projects/redwood/deploy-target-ci/netlify/node_modules/@netlify/zip-it-and-ship-it/dist/runtimes/node/bundlers/zisi/resolve.js:75:20)
//     at resolvePackageFallback (file:///Users/dom/projects/redwood/deploy-target-ci/netlify/node_modules/@netlify/zip-it-and-ship-it/dist/runtimes/node/bundlers/zisi/resolve.js:86:26)
//     at resolvePackage (file:///Users/dom/projects/redwood/deploy-target-ci/netlify/node_modules/@netlify/zip-it-and-ship-it/dist/runtimes/node/bundlers/zisi/resolve.js:38:26)
//     at async getDependenciesForModuleName (file:///Users/dom/projects/redwood/deploy-target-ci/netlify/node_modules/@netlify/zip-it-and-ship-it/dist/runtimes/node/bundlers/zisi/traverse.js:31:25)
//     at async getDependencyPathsForDependency (file:///Users/dom/projects/redwood/deploy-target-ci/netlify/node_modules/@netlify/zip-it-and-ship-it/dist/runtimes/node/bundlers/zisi/traverse.js:20:16)
//     at async Promise.all (index 2)
//     at async getNestedModules (file:///Users/dom/projects/redwood/deploy-target-ci/netlify/node_modules/@netlify/zip-it-and-ship-it/dist/runtimes/node/bundlers/zisi/traverse.js:59:23)
//     at async Promise.all (index 2) {
//   code: 'MODULE_NOT_FOUND',
//   requireStack: [
//     '/Users/dom/projects/redwood/deploy-target-ci/netlify/node_modules/@netlify/zip-it-and-ship-it/dist/runtimes/node/bundlers/zisi/resolve.js'
//   ]
// }
// ```
//
// Open up a function, like `getDependenciesForModuleName` (node_modules/@netlify/zip-it-and-ship-it/dist/runtimes/node/bundlers/zisi/traverse.js:31:25)
// set a breakpoint, and run this script using VS Code's "JavaScript Debug Terminal".
