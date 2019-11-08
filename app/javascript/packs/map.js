import GMaps from 'gmaps/gmaps.js';

document.addEventListener('DOMContentLoaded', () => {
  const mapElement = document.getElementById('map');
  if (mapElement) { // don't try to build a map if there's no div#map to inject in
    const map = new GMaps({ el: '#map', lat: 0, lng: 0 });

  console.log(map)
     // document.addEventListener("DOMContentLoaded", () => {

    const cardhover = document.querySelectorAll('.ug-thumb-overlay');
    console.log(cardhover)
      const yellowMarkers = []

      cardhover.forEach((x) => {
        let card = x.nextElementSibling
        if (card.attributes.alt.value.match(/(-\d*|\d*)\.\d*\s(-\d*|\d*)\.\d*/)) {
          console.log("inside if")
        const coordinates = card.attributes.alt.value.match(/(-\d*|\d*)\.\d*\s(-\d*|\d*)\.\d*/)[0].split(" ")

        const latitude = parseFloat(coordinates[0])
        const longitude = parseFloat(coordinates[1])
        var latlng = new google.maps.LatLng(latitude, longitude);

        let m = {lat: latitude, lng: longitude, icon: 'https://res.cloudinary.com/ddnvsxspt/image/upload/v1573193430/Group_watao7.svg', visible: false }
        // map.addyellowMarkers([m])
        yellowMarkers.push(m)
        // map.setCenter(m.lat, m.lng);

        // const focusMark = new google.maps.Marker({
        //   position: latlng,
        //   map: map,
        //   icon: 'https://res.cloudinary.com/ddnvsxspt/image/upload/v1573193430/Group_watao7.svg',
        //   visible: false,
        // });



          // console.log(coordinates)
        card.addEventListener('mouseover', function(e) {
          map.setCenter(latlng);
          map.setZoom(12);
          focusMark.setVisible(true);
          console.log("hello")
        });
        card.addEventListener('mouseleave', function(e) {
          map.fitBounds(getBounds()); //auto-zoom
          map.panToBounds(getBounds()); //auto-center
          focusMark.setVisible(false);
        });
      };
      });
  // });








    const markers = JSON.parse(mapElement.dataset.markers).concat(yellowMarkers);

    map.addMarkers(markers);
    if (markers.length === 0) {
      map.setZoom(2);
    } else if (markers.length === 1) {
      map.setCenter(markers[0].lat, markers[0].lng, markers[0]);
      map.setZoom(14);
    } else {
      map.fitLatLngBounds(markers);
    }
  }
  console.log(map.markers)

})

