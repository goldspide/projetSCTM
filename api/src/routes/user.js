const express = require("express");

const router = express.Router();

const {
  signIn,
  signUp,
  getAll,
  getById,
  passwordReset,
} = require("../controllers/user");

router.post("/signup", signUp);
router.post("/signin", signIn);
router.post("/user/reset-password", passwordReset);
router.get("/user", getAll);
router.get("/user/:id", getById);

module.exports = router;
