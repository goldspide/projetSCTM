const fs = require("fs");
const multer = require("multer");

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    if (!fs.existsSync(`uploads/${req.body.owner}/`))
      fs.mkdirSync(`uploads/${req.body.owner}/`);
    cb(null, `uploads/${req.body.owner}/`);
  },
  filename: (req, file, cb) => {
    const part = file.originalname.split(".");
    const fileUrl = `prod-${Date.now()}.${part[part.length - 1]}`;
    req.body.fileUrl = fileUrl;
    cb(null, fileUrl);
  },
});

module.exports = storage;
