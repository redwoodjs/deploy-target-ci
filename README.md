# Deploy target CI

Redwood's Deploy target CI.
End to end tests for our deploy providers using the test project.
We test every `@next` release.

| Target                      | Preview                                                                     |
| --------------------------- | --------------------------------------------------------------------------- |
| Baremetal                   | http://ec2-44-211-53-247.compute-1.amazonaws.com:8910/                      |
| Coherence                   | https://main.rw-deploy-targe-review.redwoodjs.coherencesites.com            |
| Flightcontrol               | https://d2dub2qmgsm5yj.cloudfront.net                                       |
| Layer0                      | https://redwoodjs-redwoodjs-deploy-target-ci-default.layer0-limelight.link/ |
| Netlify                     | https://rwjs-deploy-target-ci.netlify.app                                   |
| Render                      | https://render-postgres-web.onrender.com                                    |
| Serverless AWS (Deprecated) | https://d1nqrl4z14qxd1.cloudfront.net                                       |
| Vercel                      | https://rwjs-deploy-target-ci.vercel.app                                    |

`heroku` and `massdriver` aren't set up yet.

See the Makefile or the GitHub workflows for more details.