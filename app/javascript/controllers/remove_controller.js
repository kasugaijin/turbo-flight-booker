import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['button']

  connect() {
      this.buttonTarget.style.color = "white";
      this.buttonTarget.disabled = true;
  }
}

// connect runs every time a new turbo frame is created