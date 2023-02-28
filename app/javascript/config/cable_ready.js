import CableReady from 'cable_ready'
import consumer from '../channels/consumer'

CableReady.initialize({ consumer })

CableReady.operations.clearTurboCache = () => {
  Turbo.cache.clear()
}
