import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.element.animate(
          [ { opacity: 1 }, { opacity: 0 } ],
          { duration: 800 }
      ).onfinish = () => {
        this.element.remove()
      }
    }, 3000)
  }
}
