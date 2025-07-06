import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="authors-modal"
export default class extends Controller {
  connect () {
    $('#author-modal-form').modal('show')
  }

  submitEnd () {
    $('body').removeClass('modal-open')
    $('.modal-backdrop').remove()
    $('#new-author-success').removeClass('show')
    window.setTimeout(() => {
      $('.alert').fadeTo(500, 0).slideUp(500, () => {
        $(this).remove()
      })
    }, 1000)
  }
}
