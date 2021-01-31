const { validationResult } = require('express-validator');
const createError = require('http-errors');

// ******** Sequelize ***********

const { Product, Brand, Category } = require('../../database/models');

module.exports = {

    // Muestra los últimos 5 productos que fueron creados
    latest(req, res, next) {
        Product.findAll({
            order: [['createdAt', 'ASC']],
            limit: 8
        })
            .then(function (resultado) {
                let response = {
                    meta: {
                        status: 200,
                        count: resultado.length,
                        url: "/api/products/latest"
                    },
                    data: resultado
                }
                res.send(response)
            })
    },

    // Muestra los últimos 5 productos con descuentos mas grandes
    offers(req, res, next) {
        Product.findAll({
            order: [['discount', 'ASC']],
            limit: 8
        })
            .then(function (resultado) {
                let response = {
                    meta: {
                        status: 200,
                        count: resultado.length,
                        url: "/api/products/offers"
                    },
                    data: resultado
                }
                res.send(response)
            })
    },

    // Muestra todos los productos de una categoría específica
    getProducts(req, res, next) {
        Category.findOne({
			where: {
				name: req.params.category
			},
            include: [{ association: 'products' }]
        }).then(response => {
            res.send(response.products)
        })
    }
}