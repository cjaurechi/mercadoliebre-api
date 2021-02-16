// ******** Sequelize ***********

const {
    Product,
    Item,
    User
} = require('../../database/models');

function minusPercent(n, p) {
    return n - (n * (p / 100));
}

module.exports = {

    // Agrega producto al carrito
    addToCartAPI(req, res, next) {
        Product.findByPk(req.body.productId, {
                include: ["user"],
            })
            .then(product => {
                let price =
                    Number(product.discount) > 0 ?
                    product.price - (product.price * product.discount) / 100 :
                    product.price;
                Item.create({
                    salePrice: price,
                    quantity: req.body.quantity,
                    subTotal: price * req.body.quantity,
                    state: 1,
                    userId: product.user.id, // Esto tiene que ser el req.session.user.id pero como lo consigo pegandole a la API desde Postman? Agrego un campo req.body.userId?
                    sellerId: product.user.id,
                    productId: product.id,
                })
                .then((item) => {
                    let response = {
                        meta: {
                            status: 201,
                            message: 'Product added to cart'
                        },
                        data: {
                            item: item
                        }
                    }
                    res.send(response);
                })
                .catch(err => {res.send(err.message)});
            })
            .catch(err => {res.send(err.message)})
    },

    removeFromCartAPI(req, res, next) {
        Item.update({
                state: 0
            }, {
                where: {
                    id: req.body.itemId
                }
            })
            .then(response => {
                res.send(response);
            })
            .catch(err => {
                res.send(err);
            })
    }
}