const User= require("../models/User");
const jwt = require("jsonwebtoken");
const { successResponse } = require("../utils/responseHandler");
//generate jwt
const generateToken = (id)=> {
    return jwt.sign({ id }, process.env.JWT_SECRET,{
        expiresIn: "7d",
    });
};
//@desc   register new user
//@route  POST /api/auth/register
//@access PUBLIC
const RegisterUser= async(req, res, next)=>{
    try{
        const {name, email, password, age, weight, height, diabetesType }= req.body;
        // check useer exist
        const userExists = await User.findOne({ email });
        if(userExists){
            const err = new Error("User already exists");
            err.statusCode = 400;
            return next(err);
        }
        // create a user
        const user = await User.create({
            name,
            email,
            password,
            age,
            weight,
            height,
            diabetesType,
        });
        successResponse(res, "User registered successfully", {
      _id: user._id,
      name: user.name,
      email: user.email,
      token: generateToken(user._id),
    }, 201);
    }catch(error){
        next(error);
    }
};
// @desc   Login user
// @route  Post /api/auth/login
// @access Public
const loginUser = async( req, res, next)=> {
    try{
        const {email,password }= req.body;
        const user = await User.findOne({ email });
        if (!user){
            const err = new Error("Invalid email or password");
            err.statusCode = 401;
            return next(err);
        }
        const isMatch = await user.matchPassword(password);
        if(!isMatch){
            const err = new Error("Invalid email or password");
            err.statusCode = 401;
            return next(err);
        }
        successResponse(res, "Login successful",{
            _id: user._id,
            name: user.name,
            email: user.email,
            token: generateToken(user._id),
        });
    } catch(error){
        next(error);
    }
};
module.exports = { registerUser, loginUser};