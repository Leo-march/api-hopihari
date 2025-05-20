const express = require("express");
const app = express();
const cors = require("cors");
const helmet = require("helmet");
const bodyParser = require("body-parser");

const usuariosRoute = require("./routes/usuarios.route");
const filasRoute = require("./routes/filas.route");
const notificationsRoute = require("./routes/notification.route")
const brinquedosRoute = require("./routes/brinquedos.route")

app.use(cors());
app.use(helmet());

app.use(bodyParser.urlencoded({ extended: false}));
app.use(bodyParser.json());

app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization");

    if (req.method === "OPTIONS") {
        res.header("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, PATCH");
    }
    next();
  });

  app.use("/usuarios", usuariosRoute); // Rota de login
  app.use("/filas", filasRoute); // Rota de FIlas
  app.use("/filas", filasRoute);
  app.use("/Notifications", notificationsRoute); // Rota de notificações
  app.use("/brinquedos", brinquedosRoute); // Rota de brinquedos)

  module.exports = app; // Exporta o app para ser usado no server.js