const jwt = require('jsonwebtoken');

const ver = (req,res,next) => {
    try{
        var token = req.cookies.token;
        if(token){
            let jwtSecretKey = process.env.JWT_SECRET_KEY;
            var verfiy = jwt.verify(token,jwtSecretKey);
            next();
        }
        else{
           res.render('login/login');
        }
    }
    catch(e){
        console.log(e);
        res.render('login/login');

    }
}
module.exports = ver;