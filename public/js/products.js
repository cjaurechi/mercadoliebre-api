axios('http://localhost:3000/api/products/latest')
    .then(response => {
        let productos = response.data.data;
        let ultimosProductos = document.getElementById('latest-products')
        for (let i = 0; i < ultimosProductos.childElementCount; i++) {
            ultimosProductos.children[i].querySelector('a').href = "/products/detail/" + productos[i].id;
            ultimosProductos.children[i].querySelector('img').src = "/images/products/" + productos[i].image;
            ultimosProductos.children[i].querySelector('img').alt = productos[i].name;
            ultimosProductos.children[i].querySelector('h2').innerText = "$ " + Math.trunc(productos[i].price - productos[i].price * productos[i].discount / 100);
            if (ultimosProductos.children[i].querySelector('span')) {
                ultimosProductos.children[i].querySelector('span').innerText = productos[i].discount + " % OFF";
            }
            ultimosProductos.children[i].querySelector('p').innerText = productos[i].name
        }
    })
    .catch(errors =>
        console.log(errors))

axios('http://localhost:3000/api/products/offers')
    .then(response => {
        let productos = response.data.data;
        let productosEnOferta = document.getElementById('offers-products')
        for (let i = 0; i < productosEnOferta.childElementCount; i++) {
            productosEnOferta.children[i].querySelector('a').href = "/products/detail/" + productos[i].id;
            productosEnOferta.children[i].querySelector('img').src = "/images/products/" + productos[i].image;
            productosEnOferta.children[i].querySelector('img').alt = productos[i].name;
            productosEnOferta.children[i].querySelector('h2').innerText = "$ " + Math.trunc(productos[i].price - productos[i].price * productos[i].discount / 100);
            if (productosEnOferta.children[i].querySelector('span')) {
                productosEnOferta.children[i].querySelector('span').innerText = productos[i].discount + " % OFF";
            }
            productosEnOferta.children[i].querySelector('p').innerText = productos[i].name
        }
    })
    .catch(errors =>
        console.log(errors))