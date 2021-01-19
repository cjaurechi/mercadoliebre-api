// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Middlewares ************

const authMiddleware = require('../../middlewares/auth');
const sellerMiddleware = require('../../middlewares/seller');
const validator = require('../../middlewares/validator');

// ************ Controller Require ************

const itemsController = require('../../controllers/api/itemsController');

// ************       Routes       ************

router.get('/', itemsController.test)
router.post('/', itemsController.add); /* POST - Add product to the cart */

module.exports = router;