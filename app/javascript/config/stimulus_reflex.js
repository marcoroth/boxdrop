import StimulusReflex from 'stimulus_reflex'
import controller from '../controllers/application_controller'
import { application } from '../controllers/application'

StimulusReflex.initialize(application, { controller, isolate: true, debug: false })
