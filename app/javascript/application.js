// app/javascript/application.js
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Turbo } from "@hotwired/turbo-rails"
import "controllers"

Turbo.session.drive = false

import jquery from "jquery";
window.jQuery = jquery;
window.$ = jquery;
import Rails from "@rails/ujs"
Rails.start();

// required for rails action text trix editor 
import "trix"
import "@rails/actiontext"

// importing for building for mobile
import "./pwa/companion";
