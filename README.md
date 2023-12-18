# Deploy Target CI

Redwood's deploy target CI.
End to end tests for our deploy targets using the test project.
We test every `@next` release.

| Target                      | Preview                                                                     |
| --------------------------- | --------------------------------------------------------------------------- |
| Baremetal                   | http://ec2-44-211-53-247.compute-1.amazonaws.com:8910/                      |
| Coherence                   | https://main.rw-deploy-targe-review.redwoodjs.coherencesites.com            |
| Flightcontrol               | https://d2dub2qmgsm5yj.cloudfront.net                                       |
| Layer0                      | https://redwoodjs-redwoodjs-deploy-target-ci-default.layer0-limelight.link/ |
| Netlify                     | https://rwjs-deploy-target-ci.netlify.app                                   |
| Render                      | https://render-postgres-web.onrender.com                                    |
| Vercel                      | https://rwjs-deploy-target-ci.vercel.app                                    |

See the [Makefile](./Makefile) or the [GitHub workflows](./.github/workflows) for more details.
