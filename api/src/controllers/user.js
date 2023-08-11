/* eslint-disable no-underscore-dangle */
const validator = require("validator");
const { invalidData } = require("../helpers/error");

const User = require("../models/user");
const { isPhoneNumber } = require("../helpers/methods");

exports.signUp = async (req, res) => {
  console.log("User sign up...");
  try {
    if (req.body.email) {
      const exist = await User.findOne({ email: req.body.email });
      if (exist) {
        console.log("Duplicated email");
        return res.status(409).json({ message: "Email existant" });
      }
      try {
        if (req.body.phone && isPhoneNumber(req.body.phone)) {
          const doc = new User({
            ...req.body,
          });
          doc.save();
          console.log("User saved successfully");
          return res.status(200).json(doc);
        }
        return res.status(400).json({ message: "Format téléphone incorrect" });
      } catch (error) {
        console.log("Unable to save user", error);
        return res.status(400).json({ message: "Bad request" });
      }
    } else {
      console.log("Missing email");
      return invalidData({
        res,
        statusCode: 500,
        error: "Email requis",
      });
    }
  } catch (error) {
    console.log(error);
    if (error.message.startsWith("User validation")) {
      return invalidData({
        res,
      });
    }
    return invalidData({
      res,
      statusCode: 500,
      error,
    });
  }
};

exports.signIn = async (req, res) => {
  console.log("User Sign in...");
  try {
    const user = await User.findOne({
      phone: req.body.phone,
      password: req.body.password,
    });
    if (user) {
      return res.status(200).json(user);
    }
    return invalidData({
      res,
      error: "No user account",
      statusCode: 404,
    });
  } catch (e) {
    console.log(e);
    return res.status(500).json({ message: e });
  }
};

exports.getAll = async (req, res) => {
  try {
    const result = await User.find();
    return res.status(200).json(result);
  } catch (error) {
    return invalidData({
      res,
      statusCode: 500,
      error,
    });
  }
};

exports.getById = async (req, res) => {
  try {
    const user = await User.findById(req.params.id);
    if (user) {
      console.log("User found");
      return res.status(200).json(user);
    }
    console.log("User not found");
    return res.status(404).json({ message: "User not found" });
  } catch (error) {
    return invalidData({ res, statusCode: 500, error });
  }
};

exports.passwordReset = async (req, res) => {
  try {
    if (
      !validator.isStrongPassword(req.body.password, {
        minSymbols: 0,
      })
    ) {
      return invalidData({
        res,
        statusCode: 404,
        error: "Password is not strong enough",
      });
    }

    req.user.password = req.body.password;
    req.user.emailResetToken = null;

    await req.user.save();

    return res.status(201).json("Password reset");
  } catch (error) {
    return invalidData({
      res,
      statusCode: 500,
    });
  }
};

// exports.update = async (req, res) => {
//   try {
//     const propertiesArray = ["firstname", "lastname", "matricule", "username"];
//     const data = JSON.parse(req.body.user);

//     Object.keys(data).forEach((prop) => {
//       if (!propertiesArray.includes(prop)) {
//         delete data[prop];
//       }
//     });
//     propertiesArray.forEach((property) => {
//       req.user[property] = data[property];
//     });
//     req.user.profile = `https://www.itreportserver.waternels.com/picture/profile/${req.user._id}`;
//     await req.user.save();

//     return res.status(200).json(req.user);
//   } catch (error) {
//     console.log(error);
//     if (error.message.startsWith("User validation")) {
//       return invalidData({
//         res,
//         statusCode: 400,
//         error: "Invalid data",
//       });
//     }
//     return invalidData({
//       res,
//       statusCode: 500,
//     });
//   }
// };
