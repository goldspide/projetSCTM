const mongoose = require("mongoose");

const { Schema } = mongoose;

const notificationSchema = new Schema(
  {
    object: {
      trim: true,
      required: true,
      type: String,
    },
    content: {
      required: true,
      trim: true,
      type: String,
    },
  },
  {
    timestamps: true,
  },
);

const Notification = mongoose.model("Notification", notificationSchema);
module.exports = Notification;
