// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//images
require.context('../images', true)

import Rails from "@rails/ujs"


// import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
//import css
require('stylesheets/sb-admin-2.css');
require('stylesheets/custom.css');
require('stylesheets/navbar.css')
//import scripts
require("jquery");
require("@nathanvda/cocoon");
require("src/sb-admin-2.js");
require("src/custom.js");
//import libs using yarn
import 'bootstrap/dist/js/bootstrap'
import 'jquery.easing/jquery.easing.min.js'
import 'font-awesome/css/font-awesome.css'
import 'nprogress/nprogress.js'
import 'malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.js'
import 'fastclick/lib/fastclick.js'
import 'metismenu/src/index.js'


//global.$ = require('jquery')


Rails.start()
//Turbolinks.start()
ActiveStorage.start()
