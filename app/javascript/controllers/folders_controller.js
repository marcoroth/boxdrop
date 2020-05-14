import ApplicationController from './application_controller'
import StimulusReflex from 'stimulus_reflex';

export default class extends ApplicationController {
  static draggable = null;

  connect() {
    StimulusReflex.register(this)
  }

  dragover(event) {
    event.preventDefault();

    if (event.target.classList.contains('folder-item')) {
      event.target.style.backgroundColor = '#fbe7b1';
    }
  }

  dragenter(event) {
    if (event.target.classList.contains('folder-item')) {
      event.target.style.backgroundColor = '#fbe7b1';
    }
  }

  dragleave(event) {
    if (event.target.classList.contains('folder-item')) {
      event.target.style.backgroundColor = '#fef8e8';
    }
  }

  dragstart(event) {
    this.draggable = event.target;
    const folders = document.getElementsByClassName('folder-item');

    Array.prototype.forEach.call(folders, (folder) => {
      folder.style.backgroundColor = '#fef8e8';
    })
  }

  dragend(event) {
    const folders = document.getElementsByClassName('folder-item');

    Array.prototype.forEach.call(folders, (folder) => {
      folder.style.backgroundColor = 'white';
    })
  }

  drop(event) {
    event.preventDefault();

    const folders = document.getElementsByClassName('folder-item');

    Array.prototype.forEach.call(folders, (folder) => {
      folder.style.backgroundColor = 'white';
    })

    if (event.target.dataset.folderId) {
      this.stimulate('FolderReflex#move', event.target, {folder: event.target.dataset.folderId, document: this.draggable.dataset.id})
    }
  }

}
