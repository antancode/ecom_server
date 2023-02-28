const connect = require('../config/host');

class product {

    static async product_filter(req, res) {

        const categorie = await connect.query("SELECT `id`, `name` FROM `categorie`");
        const color = await connect.query("SELECT `id`, `name` FROM `color`");
        const size = await connect.query("SELECT `id`, `name` FROM `size`");

        res.send({ categorie, color, size });
    }

    static product_list(req, res) {
        const { query: body } = req;
        const pass = JSON.parse(body.filter);
        let categorie = null, color = null, size = null;

        if (pass.length !== 0) {
            if (pass.categorie.length > 0) {
                categorie = pass.categorie;
            }
            if (pass.color.length > 0) {
                color = pass.color;
            }
            if (pass.size.length > 0) {
                size = pass.size;
            }
        }


        try {

            if (categorie !== null || color !== null || size !== null) {
                connect.query("SELECT P.id, P.name, P.description, P.actual_price, P.sale_price, PI.image, IC.name AS categorie_name, ICL.name AS color_name, ISZ.name AS size_name FROM `product` AS P LEFT JOIN `product_image` AS PI ON PI.product_id = P.id LEFT JOIN `product_categorie` AS IPCT ON IPCT.product_id = P.id LEFT JOIN `categorie` AS IC ON IC.id = IPCT.categorie_id LEFT JOIN `product_color` AS IPCL ON IPCL.product_id = P.id LEFT JOIN `color` AS ICL ON ICL.id = IPCL.color_id LEFT JOIN `product_size` AS IPS ON IPS.product_id = p.id LEFT JOIN `size` AS ISZ ON ISZ.id = IPS.size_id WHERE P.id IS NOT NULL AND P.id IN(SELECT PCT.product_id FROM `product_categorie` AS PCT WHERE PCT.categorie_id IN ( ? )) OR P.id IN(SELECT PCL.product_id FROM `product_color` AS PCL WHERE PCL.color_id IN ( ? )) OR P.id IN(SELECT PZ.product_id FROM `product_size` AS PZ WHERE PZ.size_id IN ( ? )) LIMIT ? , ?", [categorie, color, size, parseInt(body.min), parseInt(body.max)]).then((products) => {
                    if (products.length > 0) {
                        res.send({
                            result: {
                                success: true,
                                message: "data available",
                                result: products
                            },
                            error: {
                                error_status: false,
                                message: null
                            }
                        })
                    } else {
                        res.send({
                            result: {
                                success: true,
                                message: "data not available",
                                result: products
                            },
                            error: {
                                error_status: false,
                                message: null
                            }
                        })
                    }
                }).catch((err) => {
                    res.send({
                        result: {
                            success: false,
                            message: null
                        },
                        error: {
                            error_status: true,
                            message: "query failed error",
                            error: err,
                        }
                    })
                })
            } else {
                connect.query("SELECT P.id, P.name, P.description, P.actual_price, P.sale_price, PI.image, IC.name AS categorie_name, ICL.name AS color_name, ISZ.name AS size_name FROM `product` AS P LEFT JOIN `product_image` AS PI ON PI.product_id = P.id LEFT JOIN `product_categorie` AS IPCT ON IPCT.product_id = P.id LEFT JOIN `categorie` AS IC ON IC.id = IPCT.categorie_id LEFT JOIN `product_color` AS IPCL ON IPCL.product_id = P.id LEFT JOIN `color` AS ICL ON ICL.id = IPCL.color_id LEFT JOIN `product_size` AS IPS ON IPS.product_id = p.id LEFT JOIN `size` AS ISZ ON ISZ.id = IPS.size_id WHERE P.id IS NOT NULL LIMIT ? , ?", [parseInt(body.min), parseInt(body.max)]).then((products) => {
                    if (products.length > 0) {
                        res.send({
                            result: {
                                success: true,
                                message: "data available",
                                result: products
                            },
                            error: {
                                error_status: false,
                                message: null
                            }
                        })
                    } else {
                        res.send({
                            result: {
                                success: true,
                                message: "data not available",
                                result: products
                            },
                            error: {
                                error_status: false,
                                message: null
                            }
                        })
                    }
                }).catch((err) => {
                    res.send({
                        result: {
                            success: false,
                            message: null
                        },
                        error: {
                            error_status: true,
                            message: "query failed error",
                            error: err,
                        }
                    })
                })
            }
        } catch (err) {
            res.send({
                result: {
                    success: false,
                    message: null
                },
                error: {
                    error_status: true,
                    message: "try catch error",
                    error: err,
                }
            })
        }
    }

    static product_detail(req, res) {
        const { body } = req;

        try {
            connect.query("SELECT P.id, P.name, P.description, P.actual_price, P.sale_price, PI.image, IC.name AS categorie_name, ICL.name AS color_name, ISZ.name AS size_name FROM `product` AS P LEFT JOIN `product_image` AS PI ON PI.product_id = P.id LEFT JOIN `product_categorie` AS IPCT ON IPCT.product_id = P.id LEFT JOIN `categorie` AS IC ON IC.id = IPCT.categorie_id LEFT JOIN `product_color` AS IPCL ON IPCL.product_id = P.id LEFT JOIN `color` AS ICL ON ICL.id = IPCL.color_id LEFT JOIN `product_size` AS IPS ON IPS.product_id = p.id LEFT JOIN `size` AS ISZ ON ISZ.id = IPS.size_id WHERE P.id = ? ", [body.id]).then((product) => {
                if (product.length > 0) {
                    res.send({
                        result: {
                            success: true,
                            message: "data available",
                            result: product
                        },
                        error: {
                            error_status: false,
                            message: null
                        }
                    })
                } else {
                    res.send({
                        result: {
                            success: true,
                            message: "data not available",
                            result: product
                        },
                        error: {
                            error_status: false,
                            message: null
                        }
                    })
                }
            }).catch((err) => {
                res.send({
                    result: {
                        success: false,
                        message: null
                    },
                    error: {
                        error_status: true,
                        message: "query failed error",
                        error: err,
                    }
                })
            })
            
        } catch (err) {
            res.send({
                result: {
                    success: false,
                    message: null
                },
                error: {
                    error_status: true,
                    message: "try catch error",
                    error: err,
                }
            })
        }
    }

    static product_search(req, res){
        const { body } = req;

        try{
            connect.query("SELECT P.id, P.name AS title, P.sale_price AS price, PI.image FROM `product` AS P LEFT JOIN `product_image` AS PI ON PI.product_id = P.id WHERE  P.name LIKE CONCAT('%', ? , '%') OR P.description LIKE CONCAT('%', ? , '%') LIMIT 5", [body.search, body.search]).then((product) => {
                if (product.length > 0) {
                    res.send({
                        result: {
                            success: true,
                            message: "data available",
                            result: product
                        },
                        error: {
                            error_status: false,
                            message: null
                        }
                    })
                } else {
                    res.send({
                        result: {
                            success: true,
                            message: "data not available",
                            result: product
                        },
                        error: {
                            error_status: false,
                            message: null
                        }
                    })
                }
            }).catch((err) => {
                res.send({
                    result: {
                        success: false,
                        message: null
                    },
                    error: {
                        error_status: true,
                        message: "query failed error",
                        error: err,
                    }
                })
            })
        }catch(err){
            res.send({
                result: {
                    success: false,
                    message: null
                },
                error: {
                    error_status: true,
                    message: "try catch error",
                    error: err,
                }
            })
        }
    }
}


module.exports = product;