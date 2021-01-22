// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Middlewares ************

const authMiddleware = require('../../middlewares/auth');
const sellerMiddleware = require('../../middlewares/seller');
const validator = require('../../middlewares/validator');

// ************ Controller Require ************

const itemsControllerAPI = require('../../controllers/api/itemsController');

// ************       Routes       ************

router.post('/', itemsControllerAPI.addToCartAPI); /* POST - Add product to the cart */
router.delete('/', itemsControllerAPI.removeFromCartAPI); /* DELETE - Remove product from the cart */

module.exports = router;