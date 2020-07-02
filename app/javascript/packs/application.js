// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

//= require jquery    # Not included
//= require jquery-ui # Not included
//= require bootstrap-datepicker

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
// import "bootstrap-datepicker";
import { test } from "../steps/index";

// Internal imports, e.g:
import { disabled } from "../components/_disabled_button";
import { date } from "../components/_date";
import { timelineSwiper } from "../components/_swiper";
import { initTimeLine } from "../components/_swiper";
// import { activeTarget } from "../components/_swiper";
// import { targetAnchor } from "../components/_swiper";
import AOS from "aos";
import { opacity } from "../components/_myeffect";
import { scrolltop } from "../components/_progress";

// import { initSelect2 } from '../components/init_select2';

document.addEventListener("turbolinks:load", () => {
  disabled();
  date();
  AOS.init();
  initTimeLine();
  scrolltop();
  // activeTarget();
  // timelineSwiper();
  // targetAnchor();
  // opacity();
  // Call your functions here, e.g:
  // initSelect2();
  // test();
});
