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
        console.log(data.my_bookings)
        const variable = [...data.my_bookings]
        variable.ForEach(my_booking => {
          console.log(my_booking)
        })
         // this.countbookingsTarget.innerHtml = data.my_bookings;
      });
  }
}
