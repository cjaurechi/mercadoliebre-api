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

                // Agrego un campo req.body.userId solo para pegarle a la API desde Postman
                if (req.body.userId) {
                    var userId = req.body.userId
                } else {
                    var userId = req.session.user.id
                }

                Item.create({
                    salePrice: price,
                    quantity: req.body.quantity,
                    subTotal: price * req.body.quantity,
                    state: 1,
                    userId: userId,
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