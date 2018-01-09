import React, { Component } from 'react'

import {
  ApolloClient,
  ApolloProvider,
  createNetworkInterface
} from 'react-apollo'
import UserListWithData from './components/UserListWithData'

import SiteMenu from './components/SiteMenu'
import SiteBrand from './components/SiteBrand'

const networkInterface = createNetworkInterface({
  uri: process.env.REACT_APP_BLOG_URL || 'http://localhost:4000/graphql'
})

const client = new ApolloClient({
  networkInterface
})

class App extends Component {
  render() {
    return (
      <ApolloProvider client={client}>
        <div className="container grid-960">
          <div className="columns">
            <div className="column col-3">
              <SiteBrand />
              <SiteMenu />
            </div>
            <div className="column col-9">
              <div className="main">
                <UserListWithData />
              </div>
            </div>
          </div>
        </div>
      </ApolloProvider>
    )
  }
}

export default App
