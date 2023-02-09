import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = ['form', 'list', 'submitButton']

  connect() {
    this.requestHeaders = { headers: { "Accept": "application/json" } }
  }

  get actionURL()   {
    const formData = new FormData(this.formTarget)
    const queryString = new URLSearchParams(formData).toString()
    return `${this.formTarget.action }?${queryString}`
  }

  refreshList(event) {
    event.preventDefault()

    fetch(this.actionURL, this.requestHeaders)
      .then(response => response.json())
      .then(this.#refresh.bind(this))
  }

  #refresh(data) {
    this.listTarget.innerHTML = data.templates.list
    this.formTarget.outerHTML = data.templates.form
  }
}
