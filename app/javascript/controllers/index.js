// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { application } from './application'
import { definitionsFromContext } from '@hotwired/stimulus-webpack-helpers'

const context = require.context('controllers', true, /_controller\.js$/)
application.load(definitionsFromContext(context))
