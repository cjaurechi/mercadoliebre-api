// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Controller Require ************

const productsControllerAPI = require('../../controllers/api/productsController');

// ************       Routes       ************

router.get('/latest', productsControllerAPI.latest); /* GET - Latest products */
router.get('/offers', productsControllerAPI.offers); /* GET - Offers */
router.get('/:category?', productsControllerAPI.getProducts); /* GET - All products from one specific category */

module.exports = router