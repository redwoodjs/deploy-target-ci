## Notes

> [!NOTE]
> These are [jtoar](https://github.com/jtoar)'s working notes.
Expect them to be incomplete.

- updates should flow from...

  ```mermaid
  flowchart LR
      createRedwoodApp[create redwood app] --> testProject["__fixtures__/test-project"] --> deployCI[deploy target CI projects]
  ```

- see renovate's [developer portal](https://developer.mend.io/github/redwoodjs/deploy-target-ci.) for debugging renovate.

- quick video on using [Beyond Compare](https://www.scootersoftware.com/) to diff directories. the "Rules" button is a must:

  https://github.com/redwoodjs/deploy-target-ci/assets/32992335/98730db3-86d3-49fd-b39d-95fc18c90422

- when adding new deploy target CI projects (e.g. fly), we'd copy the test project from the redwood monorepo. so the absence of pages like "DoublePage" in baremetal etc. is going to be overhead. maybe we should add it then.

- i think, for automerge to work, we can't require that prs be up to date to be merged and tell renovate to only rebase when conflicted

- there seems to be a bug in vercel when it comes to enabling corepack and configuring the root directory:

  > Warning: Could not enable corepack because package.json is missing "packageManager" property

  it doesn't seem to to be looking at the root directory's `package.json`. i've gotten around it for now by adding a `package.json` to the root directory with the `packageManager` property.

- after a lot of trial and error, i've got flightcontrol working. it required both `NIXPACKS_VERSION=1.18.0` and `corepack enable` in the `installCommand`:

  ```json
  "installCommand": "cd flightcontrol && corepack enable && yarn install",
  ```
