const express = require('express');
const router = express.Router();
const login = require("../middleware/usuarios.midware");
const filasController = require("../controllers/filas.controller");

router.post("/idBrinquedo",
    login.required,
    filasController.verificarBrinquedo,
    filasController.entrarFila
)

module.exports = router;