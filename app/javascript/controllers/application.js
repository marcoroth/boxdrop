import { Application } from '@hotwired/stimulus'
import consumer from '../channels/consumer'

const application = Application.start()
application.consumer = consumer

window.Stimulus = application

export { application }
