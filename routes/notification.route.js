const express = require('express');
const router = express.Router();
const login = require("../middleware/usuarios.midware");
const notificationsController = require("../controllers/notification.controller");

router.get("/", login.required, notificationsController.getNotificacoes);
router.put('/:idNot', notificationsController.putNotificacoes) 

module.exports = router;    