require("dotenv").config();
const app = require("./src/app");
const { port } = require("./src/config/env");
const mongoose = require("mongoose");


// MongoDB Connection + Start Server
console.log("MONGO_URI =", process.env.MONGO_URI);
mongoose.connect(process.env.MONGO_URI)
  .then(() => {
    console.log("MongoDB Connected");

    app.listen(port, () => {
      console.log(`Server running on port ${port}`);
    });
  })
  .catch((err) => {
    console.log("DB Connection Failed:", err);
  });