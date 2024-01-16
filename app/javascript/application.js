// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
require("@popperjs/core")
import "@hotwired/turbo-rails"
import "controllers"
import * as bootstrap from "bootstrap"
import 'bootstrap'
import Rails from "@rails/ujs"

document.addEventListener("turbolinks:load", () => {
  // Both of these are from the Bootstrap 5 docs
  var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
  var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
      return new Tooltip(tooltipTriggerEl)
  })

  var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
  var popoverList = popoverTriggerList.map(function(popoverTriggerEl) {
      return new Popover(popoverTriggerEl)
  })
})

document.addEventListener("turbo:load", () => {
  var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
  var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new bootstrap.Tooltip(tooltipTriggerEl)
  })
})

Rails.start()
