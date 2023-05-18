# RedwoodJS - Deploy target CI

Testing supported RedwoodJS deploy targets using canary packages

## In maintain

| Target                      | Build & Deploy                                                                                                                                                                                                       | Preview                                                                     |
| --------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| AWS Serverless (Deprecated) | [![Deploy Serverless AWS](https://github.com/redwoodjs/deploy-target-ci/actions/workflows/deploy-serverless.yaml/badge.svg)](https://github.com/redwoodjs/deploy-target-ci/actions/workflows/deploy-serverless.yaml) | https://d1nqrl4z14qxd1.cloudfront.net                                       |
| Baremetal                   | [![Deploy baremetal](https://github.com/redwoodjs/deploy-target-ci/actions/workflows/deploy-baremetal.yaml/badge.svg)](https://github.com/redwoodjs/deploy-target-ci/actions/workflows/deploy-baremetal.yaml)        | http://ec2-44-211-53-247.compute-1.amazonaws.com:8910/                      |
| Flightcontrol               |                                                                                                                                                                                                                      | https://d2dub2qmgsm5yj.cloudfront.net                                       |
| Layer0                      | [![Deploy Layer0](https://github.com/redwoodjs/deploy-target-ci/actions/workflows/deploy-layer0.yml/badge.svg)](https://github.com/redwoodjs/deploy-target-ci/actions/workflows/deploy-layer0.yml)                   | https://redwoodjs-redwoodjs-deploy-target-ci-default.layer0-limelight.link/ |
| Netlify                     | [![Netlify Status](https://api.netlify.com/api/v1/badges/df4e9ede-0129-45e4-ad8f-e5e2c414c0b6/deploy-status)](https://app.netlify.com/sites/rwjs-deploy-target-ci/deploys)                                           | https://rwjs-deploy-target-ci.netlify.app                                   |
| Render                      |                                                                                                                                                                                                                      | https://render-postgres-web.onrender.com                                    |
| Vercel                      |                                                                                                                                                                                                                      | https://rwjs-deploy-target-ci.vercel.app                                    |
| Coherence                   |                                                                                                                                                                                                                      | https://main.rw-deploy-targe-review.redwoodjs.coherencesites.com            |

## In development

| Target | Build & Deploy                                                    | Preview                                                           |
| ------ | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| Docker | [WiP via `redwoodjs/docker`](https://github.com/redwoodjs/docker) | [WiP via `redwoodjs/docker`](https://github.com/redwoodjs/docker) |
