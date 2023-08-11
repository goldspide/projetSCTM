const express = require("express");

const router = express.Router();

const {
  create,
  update,
  remove,
  getById,
  getAll,
} = require("../controllers/event");

router.post("/event", create);
router.delete("/event/:id", remove);
router.put("/event/:id", update);
router.get("/event", getAll);
router.get("/event/:id", getById);

module.exports = router;
