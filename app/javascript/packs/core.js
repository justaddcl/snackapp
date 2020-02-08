// will load after page is ready

// check to see if the app is running in no-frame mode
const noFrame = document
  .querySelector('div[class*="app-container"]')
  .classList.contains('app-container--no-frame');

// only load header.js if app is running in frame mode
if (!noFrame) {
  require('header');
}
require('forms');
