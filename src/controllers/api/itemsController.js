const { validationResult } = require('express-validator');
const createError = require('http-errors');

// ******** Sequelize ***********

const { Product, Cart, Item } = require('../../database/models');

function minusPercent(n,p) {
    return n - (n * (p/100));
}

module.exports = {

    test(req, res, next) {
        res.send('Todo bien papá?');
    },

    // Agrega producto al carrito
    add(req, res, next) {
        Product.findOne({
            where: {
                id: req.query.productId
            }
        })
        .then(producto => {
            Item.create({
                salePrice: Math.round(minusPercent(producto.price, producto.discount)),
                quantity: req.query.quantity,
                subTotal: req.query.quantity * Math.round(minusPercent(producto.price, producto.discount)),
                state: 1,
                productId: req.query.productId,
                userId: producto.userId,
                sellerId: producto.brandId
            })
            .then(item => {
                let response = {
                    meta: {
                        status: 201,
                        message: 'Product added to cart'
                    },
                    data: {
                        item: item
                    }
                }
                res.redirect('users/cart');
                })
                .catch(errors => {
                    res.send(errors)
                })
        })
        .catch(errors => {
            res.send(errors);
        })
    }
}