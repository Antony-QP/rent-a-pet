// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------




// External imports
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { initAutoComplete } from '../plugins/init_autocomplete';
import { Application } from 'stimulus'
import { definitionsFromContext } from 'stimulus/webpack-helpers'
// import Flatpickr
import Flatpickr from 'stimulus-flatpickr'
// Import style for flatpickr
require("flatpickr/dist/flatpickr.css")


const application = Application.start()
const context = require.context('../controllers', true, /\.js$/)
application.load(definitionsFromContext(context))

// Manually register Flatpickr as a stimulus controller
application.register('flatpickr', Flatpickr)


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initMapbox();
  initAutoComplete();
});
