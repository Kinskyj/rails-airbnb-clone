$(document).ready(function() {
  var flat_address = $('.autocomplete-location').get(0);

  if (flat_address) {
    var autocomplete = new google.maps.places.Autocomplete(flat_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(flat_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

function onPlaceChanged() {
  var place = this.getPlace();

  $('#service_location').trigger('blur').val(place.formatted_address);
}

