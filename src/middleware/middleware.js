class middleware{
    static auth(req, res, next){
        console.log('Authraization...');
        next();
    }
}

module.exports = middleware; 