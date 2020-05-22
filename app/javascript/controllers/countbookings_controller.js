import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'countbookings' ];

  connect() {
    setInterval(this.refresh, 5000);
  }

  refresh = () => {
    fetch('/bookings', { headers: { accept: "application/json" }})
      .then(response => response.json())
      .then((data) => {
        this.countbookingsTarget.innerText = data.travels;
      });
  }
}
