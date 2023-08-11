const Notification = require("../models/notification");
const User = require("../models/user");

exports.create = async (req, res) => {
  try {
    const result = new Notification({ ...req.body });
    const doc = await result.save();
    return res.status(200).json(doc);
  } catch (e) {
    return res.status(500).json({ message: e });
  }
};

exports.update = async (req, res) => {
  try {
    const data = { ...req.body };
    const result = await Notification.findOneAndUpdate(
      { _id: req.params.id },
      data,
    );
    return res.status(200).json(result);
  } catch (e) {
    return res.status(500).json({ message: e });
  }
};

exports.remove = async (req, res) => {
  try {
    const result = await Notification.deleteOne({ _id: req.params.id });
    return res.status(200).json(result);
  } catch (e) {
    return res.status(500);
  }
};

exports.getAll = async (req, res) => {
  try {
    const result = await Notification.find();
    return res.status(200).json(result);
  } catch (e) {
    return res.status(500).json({ message: e });
  }
};

exports.getById = async (req, res) => {
  try {
    const result = await User.findOne({ _id: req.params.id });
    return res.status(200).json(result);
  } catch (e) {
    return res.status(500).json({ message: e });
  }
};
