const express = require("express");

const router = express.Router();

const {
  create,
  update,
  remove,
  getById,
  getAll,
} = require("../controllers/notification");

router.post("/notification", create);
router.delete("/notification/:id", remove);
router.put("/notification/:id", update);
router.get("/notification", getAll);
router.get("/notification/:id", getById);

module.exports = router;
