const mongoose = require("mongoose");

const { Schema } = mongoose;

const templateSchema = new Schema(
  {
    object: {
      trim: true,
      required: true,
      type: String,
    },
    content: {
      required: true,
      type: String,
    },
    type: {
      required: true,
      type: String,
      enum: ["email", "sms"],
    },
  },
  {
    timestamps: true,
  },
);

const Template = mongoose.model("Template", templateSchema);
module.exports = Template;
