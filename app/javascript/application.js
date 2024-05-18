// Import dependencies and configure Stimulus
import { Application } from "@hotwired/stimulus"
import "@hotwired/turbo-rails"
import "@popperjs/core"
import "bootstrap"

// Import and register Stimulus controllers
import FilterCardsController from "./controllers/filter_cards_controller.js"
import TogglePasswordController from "./controllers/toggle_password_controller.js"
import DatepickerController from "./controllers/datepicker_controller.js"
import TabsController from "./controllers/tabs_controller.js"
import HelloController from "./controllers/hello_controller.js"

window.Stimulus = Application.start()
Stimulus.register("filter-cards", FilterCardsController)
Stimulus.register("toggle-password", TogglePasswordController)
Stimulus.register("datepicker", DatepickerController)
Stimulus.register("tabs", TabsController)
Stimulus.register("hello", HelloController)
