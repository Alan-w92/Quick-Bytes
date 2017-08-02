import React from 'react';
import ReactDOM from 'react-dom';
import 'babel-polyfill';
import App from './App';

document.addEventListener('DOMContentLoaded', ()=> {
  ReactDOM.render(
    <App />,
    document.getElementById('react-app')
  )
})
