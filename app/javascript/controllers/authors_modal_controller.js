import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="authors-modal"
export default class extends Controller {
  connect () {
    $('#author-modal-form').modal('show')
  }
}
