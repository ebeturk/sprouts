// app/javascript/controllers/search_controller.js
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["form", "map"];

  connect() {
    this.formTarget.addEventListener("submit", this.handleSubmit.bind(this));
  }

  disconnect() {
    this.formTarget.removeEventListener("submit", this.handleSubmit.bind(this));
  }

  handleSubmit(event) {
    event.preventDefault();
    const query = event.target.query.value;
    fetch(`/plants?query=${encodeURIComponent(query)}`, {
      headers: {
        Accept: "application/json",
      },
    })
      .then((response) => response.json())
      .then((data) => {
        this.updateMapMarkers(data.markers);
      });
  }

  updateMapMarkers(markers) {
    const mapElement = this.mapTarget;
    const map = mapElement.map;
    if (map) {
      map.getSource("markers").setData({
        type: "FeatureCollection",
        features: markers,
      });
    }
  }
}
