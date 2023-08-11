require("dotenv").config();
const express = require("express");

const cors = require("cors");
const bodyParser = require("body-parser");
const socket = require("socket.io");
const db = require("./src/helpers/mongoose");

const app = express();

const agencies = require("./src/routes/agency");
const categorys = require("./src/routes/category");
const events = require("./src/routes/event");
const notifications = require("./src/routes/notification");
const templates = require("./src/routes/template");
const users = require("./src/routes/user");

let io;

app.use(express.static("public"));
app.use(cors());
app.use(
  express.json({
    extended: true,
    limit: "60mb",
  }),
);
app.use(bodyParser.urlencoded({ extended: false }));
app.use(users);
app.use(agencies);
app.use(categorys);
app.use(events);
app.use(notifications);
app.use(templates);

app.use("*", (_, res) => res.status(404).send("Resource not found"));

const port = process.env.PORT || 3006;

db.once("open", () => {
  const server = app.listen(port, () =>
    console.log(`Listening on port ${port} ...`),
  );

  // Socket event listeners

  io = socket(server, { cors: "*" });
  io.on("connection", (s) => {
    console.log("connection established");

    s.on("disconnect", () => {
      console.log("disconnected");
    });

    s.on("event", (object) => {
      io.emit("message", object);
    });
  });
});
