const mongoose = require("mongoose");
const bcrypt = require("bcryptjs");

const userSchema = new mongoose.Schema(
    {
        name:{
            type: String,
            required: [true, "Name is required"],
            trim: true,
        },
        email:{
            type: String,
            required: [true, "Email is required"],
            unique: true,
            lowercase: true,
            trim: true,
        },
        password:{
            type: String,
            required: [true,"Password is required"],
            minlength: 6,
        },
        age: {
            type: Number,
        },
        weight:{
            type:Number,
        },
        height: {
            type: Number,
        },
        diabetesType: {
            type: String,
            enum: ["Type 1", "Type 2", "Gestational", "Other"],
            default: "Type 2",
        },
    },
    {timestamps: true }
);
//password hashing before save
userSchema.pre("save", async function(next){
    if(!this.isModified("password")) return next();
    const salt = await bcrypt.hash(this.password, salt);
    this.password = await bcrypt.hash(this.password, salt);
    next();
});
// method to compare password
userSchema.methods.matchPassword = async function (enteredPassword){
    return await bcrypt.compare(enteredPassword, this.password);
};
module.exports = mongoose.model("User", userSchema);
