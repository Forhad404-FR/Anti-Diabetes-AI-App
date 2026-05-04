const jwt = require("jsonwebtoken");
const User = require("../models/User");
const { errorResponse }= require("../utils/responseHandler");

const protect = async(req, res,next)=>{
    let token;

    try{
        //chck for authorization header
        if(
            req.headers.authorization &&
            req.headers.authorization.startsWith("Bearer")
        ) {
            // get token from header
            token = req.headers.authorization.split(" ")[1];
            // verify token
            const decoded = jwt.verify(token, process.env.JWT_SECRET);
            // attach user to request
            req.user = { id: decoded.id }; // later: await user findby id

            next();

        } else{
            return errorResponse(res, "Not authorized, token missing", 401);
        }

    }catch(error){
        console.error(error);
        return errorResponse(res, "Not authorized, token invalid", 401);
    }
};
module.exports ={ protect };