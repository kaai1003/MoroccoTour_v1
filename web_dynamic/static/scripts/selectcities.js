/* global $ */
$(document).ready(function () {
  var regionSelect = document.getElementById('regionSelect');
  if (regionSelect) {
    regionSelect.addEventListener('change', function() {
      var regionId = this.value;
      $.get('http://127.0.0.1:5001/api/v1/regions/' + regionId + '/cities', function (data) {
        // Clear the current city options
        var citySelect = document.getElementById('citySelect');
        citySelect.innerHTML = '<option selected disabled="true">City</option>';

        // Populate new city options
        for (const city of data) {
          var option = document.createElement('option');
          option.value = city.id;
          option.textContent = city.name;
          citySelect.appendChild(option);
        }
      });
    });
  }
});
