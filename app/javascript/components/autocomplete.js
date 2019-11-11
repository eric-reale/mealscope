function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var restaurantAddress = document.getElementById('restaurant_address');
    var restaurantName = document.getElementById('restaurant_name');

    if (restaurantAddress && restaurantName ) {
      var autocomplete = new google.maps.places.Autocomplete(restaurantAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(restaurantAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
      // var autocomplete_name = new google.maps.places.Autocomplete(restaurantName, { types: [ 'establishment' ] });
      // google.maps.event.addDomListener(restaurantName, 'keydown', function(e) {
      //   if (e.key === "Enter") {
      //     e.preventDefault(); // Do not submit the form on Enter.
      //   }
      // });
    }
  });
}


export { autocomplete };
