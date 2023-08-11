const express = require("express");

const router = express.Router();

const {
  create,
  update,
  remove,
  getById,
  getAll,
} = require("../controllers/category");

router.post("/category", create);
router.delete("/category/:id", remove);
router.put("/category/:id", update);
router.get("/category", getAll);
router.get("/category/:id", getById);

module.exports = router;
