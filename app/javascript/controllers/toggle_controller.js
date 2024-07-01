import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // static classes = [ "loading" ] 

  connect() {
    console.log("Hello, Stimulus!", this.element)
  }
}