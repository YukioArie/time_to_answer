// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"

// import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
//import 'jquery';
require('stylesheets/sb-admin-2.min.css');
require('jquery')
import "channels"
import 'bootstrap/dist/js/bootstrap'
import 'jquery.easing/jquery.easing.min.js'
require("src/sb-admin-2.min.js")

//global.$ = require('jquery')


Rails.start()
//Turbolinks.start()
ActiveStorage.start()
