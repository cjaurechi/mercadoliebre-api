const { default: Axios } = require('axios');

let addForm = document.getElementById('addForm');
let quantity = addForm.quantity.value;
let productId = addForm.productId.value;
let addButton = document.getElementById('addButton');

addButton.addEventListener('click', function() {
    Axios('http://localhost:3000/api/items', {
        params: {
            quantity: quantity,
            productId: productId
        }
    })
        .then(json => {
            console.log(json);
        })
        .catch(errors => {
            console.log(errors);
        })
})