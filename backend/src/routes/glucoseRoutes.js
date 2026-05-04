const { protect } = require("../middleware/authMiddleware");

router.get("/", protect, getAllGlucose); // only logged-in users can access
router.post("/", protect, addGlucose);   // only logged-in users can add
