import $ from 'jquery'
import 'bootstrap'

document.addEventListener('cable-ready:after-morph', () => {
  $('[data-toggle="dropdown"]').dropdown('hide')
})

document.addEventListener('turbo:render', () => {
  $('[data-toggle="dropdown"]').dropdown('hide')
})
