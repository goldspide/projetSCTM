const mongoose = require("mongoose");

const { Schema } = mongoose;

const eventSchema = new Schema(
  {
    title: {
      trim: true,
      required: true,
      type: String,
    },
    description: {
      required: true,
      type: String,
    },
    dateEvent: {
      trim: true,
      required: true,
      type: Date,
    },
    hasPassed: {
      required: false,
      type: Boolean,
      default: false,
    },
    template: {
      type: mongoose.Schema.Types.ObjectId,
      required: false,
      ref: "Template",
    },
  },
  {
    timestamps: true,
  },
);

const Event = mongoose.model("Event", eventSchema);
module.exports = Event;
