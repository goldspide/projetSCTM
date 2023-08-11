const mongoose = require("mongoose");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

const { Schema } = mongoose;

const userSchema = new Schema(
  {
    fullName: {
      trim: true,
      required: true,
      type: String,
    },
    gender: {
      required: true,
      type: String,
      enum: ["male", "female"],
    },
    dateOfBirth: {
      trim: true,
      required: true,
      type: Date,
    },
    quarter: {
      trim: true,
      required: true,
      type: String,
    },
    city: {
      trim: true,
      required: true,
      type: String,
    },
    email: {
      trim: true,
      required: true,
      type: String,
    },
    password: {
      type: String,
      trim: true,
      required: true,
    },
    role: {
      type: String,
      required: true,
      enum: ["manager", "customer", "admin"],
    },
    phone: {
      trim: true,
      required: false,
      type: String,
    },
    category: {
      type: mongoose.Schema.Types.ObjectId,
      required: true,
      ref: "Category",
    },
    agency: {
      type: mongoose.Schema.Types.ObjectId,
      required: true,
      ref: "Agency",
    },
    token: {
      trim: true,
      type: String,
    },
  },
  {
    timestamps: true,
  },
);

// function to generate email verification token
userSchema.methods.generateEmailVerificationToken = async function () {
  const user = this;
  const hashed = await bcrypt.hash(user.username, 8);
  const token = jwt.sign(
    {
      token: hashed,
    },
    "ilovepizzastheyaremyfavoritemealandiwouldlovetoeatthemdayinandout1234567890",
    {
      expiresIn: 60 * 30,
    },
  );

  user.token = token;
  await user.save();

  return token;
};

const User = mongoose.model("User", userSchema);
module.exports = User;
