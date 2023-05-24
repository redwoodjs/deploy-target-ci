#!/usr/bin/env node

// Run this script with node:
// 
// ```bash
// node ./yarn_install_monorepo.js
// ```
// 
// But before running this script, you probably want update all the @redwoodjs/* packages
// using VS Code's search and replace:
// 
// ```
// "@redwoodjs/(?<name>.*)": ".*"
// "@redwoodjs/$1": "replace-me-with-the-version-you-want"
// ```

const fs = require('fs')
const { execSync } = require('child_process')

for (const dirEnt of fs.readdirSync('.', { withFileTypes: true })) {
  if (!dirEnt.isDirectory() || ['.git', '.github'].includes(dirEnt.name)) {
    continue
  }

  console.log([
    '-'.repeat(process.stdout.columns),
    dirEnt.name
  ].join('\n'))
  
  execSync(
    `cd ${dirEnt.name} && yarn install && cd ..`,
    { 
      shell: true,
      stdio: 'inherit',
    }
  )
}