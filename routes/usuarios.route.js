const express = require('express');
const router = express.Router();
const usuariosController = require("../controllers/usuarios.controller");

router.post("/login", usuariosController.login); // Rota de login
router.put("/:id", usuariosController.atualizarUsuario); 
router.post("/", usuariosController.criarUsuario); // Rota de criar usuário

module.exports = router;