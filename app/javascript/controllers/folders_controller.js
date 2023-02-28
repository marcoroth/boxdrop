import ApplicationController from './application_controller'
import StimulusReflex from 'stimulus_reflex'

export default class extends ApplicationController {
  connect () {
    StimulusReflex.register(this)

    this.colors = {
      default: 'white',
      highlight: '#fef8e8',
      hover: '#fbe7b1'
    }
  }

  dragover (event) {
    event.preventDefault()
    this.hover(event.target)
  }

  dragenter (event) {
    this.hover(event.target)
  }

  dragleave (event) {
    this.highlight(event.target)
  }

  dragstart (event) {
    const folders = document.getElementsByClassName('folder-item')

    Array.prototype.forEach.call(folders, (folder) => {
      folder.style.backgroundColor = this.colors.highlight
    })

    this.draggable = event.target
  }

  dragend (event) {
    this.clearHighlights()
  }

  drop (event) {
    const folderItem = this.getFolderItem(event.target)

    if (folderItem) {
      const folderId = folderItem.dataset.folderId

      if (this.draggable.classList.contains('document-item')) {
        this.stimulate('DocumentReflex#move', folderItem, { folder: folderId, document: this.draggable.dataset.documentId })
      } else if (this.draggable.classList.contains('folder-item')) {
        this.stimulate('FolderReflex#move', folderItem, { parent: folderId, folder: this.draggable.dataset.folderId })
      }
    }

    this.clearHighlights()
  }

  highlight (element) {
    const folderItem = this.getFolderItem(element)

    if (folderItem) {
      folderItem.style.backgroundColor = this.colors.highlight
    }
  }

  hover (element) {
    const folderItem = this.getFolderItem(element)

    if (folderItem) {
      folderItem.style.backgroundColor = this.colors.hover
    }
  }

  clearHighlights () {
    const folders = document.getElementsByClassName('folder-item')

    Array.prototype.forEach.call(folders, (folder) => {
      folder.style.backgroundColor = this.colors.default
    })
  }

  getFolderItem (element) {
    let folderItem = null
    let parent = element.parentElement

    while (parent) {
      if (parent.classList.contains('folder-item')) {
        folderItem = parent
        break
      }

      parent = parent.parentElement
    }

    return folderItem
  }
}
