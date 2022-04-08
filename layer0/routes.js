// This file was automatically added by layer0 init.
// You should commit this file to source control.
import { Router } from '@layer0/core'
import { redwoodRoutes } from '@layer0/redwood'

const apiPath = '/.redwood/functions/graphql'

export default new Router()
  .graphqlOperation(
    {
      path: apiPath,
      name: 'BlogPostsQuery',
    },
    ({ cache }) => {
      cache({
        edge: {
          maxAgeSeconds: 60 * 60, // cache responses for one hour
          staleWhileRevalidateSeconds: 60 * 60 * 24, // serve stale responses for up to 24 hours
        },
      })
    }
  )
  .use(redwoodRoutes)
