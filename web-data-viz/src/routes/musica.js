var express = require("express");
var router = express.Router();

var musicaController = require("../controllers/musicaController");

router.post("/musica-genero", function (req, res) {
    musicaController.generoMusica(req, res);
});

router.post("/musica-geral", function (req, res) {
  musicaController.todasMusica(req, res);
});
module.exports = router;    