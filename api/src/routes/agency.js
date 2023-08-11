const express = require("express");

const router = express.Router();

const {
  create,
  update,
  remove,
  getById,
  getAll,
} = require("../controllers/agency");

router.post("/agency", create);
router.delete("/agency/:id", remove);
router.put("/agency/:id", update);
router.get("/agency", getAll);
router.get("/agency/:id", getById);

module.exports = router;
