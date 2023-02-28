import { Controller } from '@hotwired/stimulus'
import StimulusReflex from 'stimulus_reflex'

export default class extends Controller {

  connect () {
    StimulusReflex.register(this)
  }

}
