import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import registerServiceWorker from './registerServiceWorker';
import './index.css';
import './spectre.css';
import './spectre-icons.css';

ReactDOM.render(
  <App />,
  document.getElementById('root')
);
registerServiceWorker();
