window.addEventListener('load', function() {
    let outdoors = document.getElementById('Outdoors');
    let computers = document.getElementById('Computers');
    let industrial = document.getElementById('Industrial');
    let home = document.getElementById('Home');
    let tools = document.getElementById('Tools');
    let garden = document.getElementById('Garden');
    let toys = document.getElementById('Toys');
    let music = document.getElementById('Music');
    let shoes = document.getElementById('Shoes');

    outdoors.addEventListener('click', function(event){
        event.preventDefault();
        axios({
            method: 'get',
            url: 'http://localhost:3000/api/products/' + outdoors.innerText
        })
        .then(response => {
            let productos = response.data;
            let productosPorCategoria = document.getElementById('productsPerCategory')
            for(let i = 0; i < productosPorCategoria.childElementCount; i++) {
                productosPorCategoria.children[i].querySelector('a').href = "/products/detail/" + productos[i].id;
                productosPorCategoria.children[i].querySelector('img').src = "/images/products/" + productos[i].image;
                productosPorCategoria.children[i].querySelector('img').alt = productos[i].name;
                productosPorCategoria.children[i].querySelector('h2').innerText = "$ " + Math.trunc(productos[i].price - productos[i].price * productos[i].discount / 100);
                productosPorCategoria.children[i].querySelector('span').innerText = productos[i].discount + " % OFF";
                productosPorCategoria.children[i].querySelector('p').innerText = productos[i].name
            }
        })
        .catch(err => {console.log(err);})
    })
})


