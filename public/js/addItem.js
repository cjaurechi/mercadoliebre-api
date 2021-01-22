window.addEventListener('load', function() {
    let addForm = document.getElementById('addForm');
    let addButton = document.getElementById('addButton');
    let quantityInput = document.getElementById('quantity');
    let productId = addForm.productId.value;

    addButton.addEventListener('click', function(event){
        event.preventDefault();
        let quantityValue = quantityInput.value;
        axios({
            method: 'post',
            url: 'http://localhost:3000/api/items',
            data: {
                quantity: quantityValue,
                productId: productId
            }
        })
        .then(response => {
            console.log(response);
            console.log(response.status);
            // if (response.status == '201') {
            //     window.location.assign('http://localhost:3000/users/cart') // Redirigir al Carrito desde el FE?
            // } else {
            //     console.log('Error?');
            // }
        })
        .catch(errors => {
            console.log(errors);
        })
    })
})