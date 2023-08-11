const express = require("express");

const router = express.Router();

const {
  create,
  update,
  remove,
  getById,
  getAll,
} = require("../controllers/template");

router.post("/template", create);
router.delete("/template/:id", remove);
router.put("/template/:id", update);
router.get("/template", getAll);
router.get("/template/:id", getById);

module.exports = router;
