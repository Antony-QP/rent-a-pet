import places from "places.js";

// const initAutocomplete = () => {
//   const addressInput = document.getElementById('location_input');
//   if (addressInput) {
//     places({ container: addressInput });
//   }
// };

// const autocomp = () => {
//   var placesAutocomplete = places({
//     appId: 'plC8QDFVPVKK',
//     apiKey: 'fdbdf98c14a70ead43d8d6b957e5e972',
//     container: document.querySelector('#form-address'),
//     templates: {
//       value: function(suggestion) {
//         return suggestion.name;
//       }
//     }
//   }).configure({
//     type: 'address'
//   });
//   var fillForm = placesAutocomplete.on('change', function resultSelected(e) {
//     document.querySelector('#form-address2').value = e.suggestion.administrative;
//   });
// };
// const container = document.querySelector("#form-address");
// if (container) {

// }
const initAutoComplete = () => {
    const addressInput = document.querySelector("#form-address");
    if(addressInput){
        places({ 
            container: addressInput
        });
    };
}
//   var placesAutocomplete = 
// };

export { initAutoComplete }
