/* global $ */
$(document).ready(function () {
  const regionSelect = document.getElementById('regionSelect');
  if (regionSelect) {
    regionSelect.addEventListener('change', function() {
      const regionId = this.value;
      $.get('http://127.0.0.1:5001/api/v1/regions/' + regionId + '/cities', function (data) {
        // Clear the current city options
        const citySelect = document.getElementById('citySelect');
        citySelect.innerHTML = '<option selected disabled="true">City</option>';

        // Populate new city options
        for (const city of data) {
          const option = document.createElement('option');
          option.value = city.id;
          option.textContent = city.name;
          citySelect.appendChild(option);
        }
      });
    });
  }
  const searchButton = document.getElementById('buttonsearch');
  if (searchButton) {
    searchButton.addEventListener('click', function() {
      const city_id = document.getElementById('citySelect').value;
      const cat_id = document.getElementById('catSelect').value;
      if (city_id) {
        $.get('http://127.0.0.1:5001/api/v1//cities/' + city_id + '/places', function (data) {
          // Clear the current place
          const placesContainer = document.getElementById('placesContainer');
          placesContainer.innerHTML = '';
          // Populate new city options
          for (const place of data) {
            const placeCard = `
            <div class="col">
              <div class="card shadow-sm">
                <img src="../static/images/${place.id}.webp" width="100%" height="225" alt="">
                <div class="card-body">
                  <h4 class="card-title fw-bold">${place.name}</h4>
                  <p class="card-text">${place.description}</p>
                  <div class="d-flex justify-content-between align-items-center">
                  </div>
                </div>
              </div>
            </div>
          `;
          placesContainer.innerHTML += placeCard;
          }
        });
      }
    });
  }
});
