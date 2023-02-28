const express       = require('express');
const router        = express.Router();
const middleware    = require('../middleware/middleware');
const product       = require('../controller/product');


router.use(middleware.auth);
router.route('/products').get(product.product_list);
router.route('/product_filter').get(product.product_filter);
router.route('/product_detail').post(product.product_detail);
router.route('/product_search').post(product.product_search);


module.exports = {
    router
};