import React from 'react'
import ReactDOM from 'react-dom'
import App from './App'
import registerServiceWorker from './registerServiceWorker'
import 'spectre.css/dist/spectre.css'
import 'spectre.css/dist/spectre-icons.css'
import './index.css'

ReactDOM.render(<App />, document.getElementById('root'))
registerServiceWorker()
