const express = require('express');
const router = express.Router();
const usuariosController = require("../controllers/usuarios.controller");
const login = require("../middleware/usuarios.midware")

router.post("/login", usuariosController.login); // Rota de login
router.post("/", usuariosController.criarUsuario); // Rota de criar usuário
router.put("/",login.required, usuariosController.editarUsuario); // Rota de editar usuário

module.exports = router;