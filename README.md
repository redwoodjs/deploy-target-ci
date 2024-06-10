# Deploy Target CI

Redwood's deploy target CI.
End-to-end tests for our deploy targets using variants of the [test project](https://github.com/redwoodjs/redwood/tree/main/__fixtures__/test-project).
We test every `@next` release (push to the next branch).

| Target                      | Preview                                                                     |
| --------------------------- | --------------------------------------------------------------------------- |
| Baremetal                   | http://ec2-44-211-53-247.compute-1.amazonaws.com:8910/                      |
| Coherence                   | https://main.rw-deploy-targe-review.redwoodjs.coherencesites.com            |
| Flightcontrol               | https://d2dub2qmgsm5yj.cloudfront.net                                       |
| Netlify                     | https://rwjs-deploy-target-ci.netlify.app                                   |
| Render                      | https://render-postgres-web.onrender.com                                    |
| Vercel                      | https://rwjs-deploy-target-ci.vercel.app                                    |

See the [Makefile](./Makefile) or the [GitHub workflows](./.github/workflows) for more details.

## Notes

- The [package.json](./package.json) file in the root is a workaround for Vercel and Corepack in monorepos