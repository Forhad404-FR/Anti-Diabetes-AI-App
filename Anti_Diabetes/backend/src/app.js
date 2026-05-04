const healthRoutes = require("./routes/health.routes");
const express = require("express");
const cors = require("cors");
const morgan = require("morgan");

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(morgan("dev"));
app.use("/api/health", healthRoutes);

// Test Route
app.get("/", (req, res) => {
  res.send("🚀 Anti-Diabetes AI Backend is Running");
});

module.exports = app;