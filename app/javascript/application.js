// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

import "./src/jquery"
import "./src/aos_stuff"
import "./src/jquery-ui"
import "./src/homepage"
import "./src/bs-init"
import "./src/chart.min"
import "./src/style"

$(function() {
	console.log("Hello, from jQuery!")

	$('#dialog').dialog();
	$( document ).tooltip();
})
