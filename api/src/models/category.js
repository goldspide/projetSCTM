const mongoose = require("mongoose");

const { Schema } = mongoose;

const categorySchema = new Schema(
  {
    label: {
      trim: true,
      required: true,
      type: String,
    },
    description: {
      required: false,
      type: String,
    },
  },
  {
    timestamps: true,
  },
);

const Category = mongoose.model("Category", categorySchema);
module.exports = Category;
