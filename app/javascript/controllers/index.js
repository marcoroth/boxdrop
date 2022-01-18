// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from 'stimulus'
import { definitionsFromContext } from 'stimulus/webpack-helpers'

import StimulusReflex from 'stimulus_reflex'
import CableReady from 'cable_ready'

import consumer from '../channels/consumer'
import controller from './application_controller'

const application = Application.start()
application.consumer = consumer

const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))

CableReady.initialize({ consumer })
StimulusReflex.initialize(application, { controller, isolate: true, debug: false })
