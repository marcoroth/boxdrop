import 'bootstrap'
import { Dropdown } from 'bootstrap'

document.addEventListener('turbo:load', () => {
  document.querySelectorAll('[data-bs-toggle="dropdown"]').forEach(element => {
    new Dropdown(element)
  })
})

document.addEventListener('cable-ready:after-morph', () => {
  document.querySelectorAll('[data-bs-toggle="dropdown"]').forEach(element => {
    new Dropdown(element)
  })
})
