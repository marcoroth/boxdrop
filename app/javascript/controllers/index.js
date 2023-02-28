// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { application } from './application'
import { definitionsFromContext } from '@hotwired/stimulus-webpack-helpers'
import consumer from '../channels/consumer'

import StimulusReflex from 'stimulus_reflex'
import CableReady from 'cable_ready'

import controller from './application_controller'

const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))

CableReady.initialize({ consumer })
StimulusReflex.initialize(application, { controller, isolate: true, debug: false })
