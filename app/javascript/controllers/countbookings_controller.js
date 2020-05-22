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
        console.log(data)
        // 1. select the partial that has the bookings
        //this.countbookingsTarget.innerHTML =
        // 2. replace it with the new innerHTML
        //for (let i in data.my_bookings) {
         // console.log(data.my_bookings[i])
        //}
        // const variable = [...data.my_bookings]
        // variable.map.ForEach(my_booking => {
        //   console.log(my_booking)
        // })
         // this.countbookingsTarget.innerHtml = data.my_bookings;
      });
    }
  }
