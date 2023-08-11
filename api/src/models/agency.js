const mongoose = require("mongoose");

const { Schema } = mongoose;

const agencySchema = new Schema(
  {
    code: {
      trim: true,
      required: true,
      type: String,
    },
    description: {
      required: false,
      type: String,
    },
    phone: {
      trim: true,
      type: String,
    },
    email: {
      required: false,
      type: String,
    },
    address: {
      trim: true,
      required: true,
      type: String,
    },
  },
  {
    timestamps: true,
  },
);

const Agency = mongoose.model("Agency", agencySchema);
module.exports = Agency;
