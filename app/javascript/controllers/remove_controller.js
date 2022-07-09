import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['button']

  connect() {
      this.buttonTarget.parentNode.removeChild(this.buttonTarget)
  }
}

// connect runs automatically every time a new controller object is made i.e. every new turbo frame
// buttonTarget = targets the first element of the target - i.e. first passenger form
// buttonTargets = targets all elements of the target