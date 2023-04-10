import { FatalErrorBoundary, RedwoodProvider } from '@redwoodjs/web'
import { RedwoodApolloProvider } from '@redwoodjs/web/apollo'

import FatalErrorPage from 'src/pages/FatalErrorPage'
import Routes from 'src/Routes'

import { AuthProvider, useAuth } from './auth'

import './scaffold.css'
import './index.css'

const App = () => (
  <FatalErrorBoundary page={FatalErrorPage}>
    <RedwoodProvider titleTemplate="%PageTitle | %AppTitle">
      <AuthProvider>
        <RedwoodApolloProvider useAuth={useAuth}>
          <Routes />
        </RedwoodApolloProvider>
      </AuthProvider>
    </RedwoodProvider>
  </FatalErrorBoundary>
)

export default App

// If this doesn't deploy, we may need to add back this config:
//
// ```tsx
// const App = () => (
//   <FatalErrorBoundary page={FatalErrorPage}>
//     <RedwoodProvider titleTemplate="%PageTitle | %AppTitle">
//     <AuthProvider
//          type="dbAuth"
//          config={{ fetchConfig: { credentials: 'include' } }}
//        >
//          <RedwoodApolloProvider
//            graphQLClientConfig={{
//              httpLinkConfig: { credentials: 'include' },
//            }}
//          >
//           <Routes />
//         </RedwoodApolloProvider>
//       </AuthProvider>
//     </RedwoodProvider>
//   </FatalErrorBoundary>
// )
// ```
