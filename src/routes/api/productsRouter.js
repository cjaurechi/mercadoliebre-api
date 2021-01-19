// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Controller Require ************

const apiProductsController = require('../../controllers/api/productsController');

// ************       Routes       ************

router.get('/latest', apiProductsController.latest); /* GET - Latest products */
router.get('/offers', apiProductsController.offers); /* GET - Offers */

module.exports = router