function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var restaurantAddress = document.getElementById('restaurant_address');

    if (restaurantAddress) {
      var autocomplete = new google.maps.places.Autocomplete(restaurantAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(restaurantAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
