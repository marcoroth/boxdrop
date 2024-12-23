// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { application } from './application'
import controllers from './**/*_controller.js'

controllers.forEach((controller) => {
  application.register(controller.name, controller.module.default)
})
