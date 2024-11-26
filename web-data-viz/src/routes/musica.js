var express = require("express");
var router = express.Router();

var musicaController = require("../controllers/musicaController");

router.post("/musica-curtir", function (req, res) {
  musicaController.curtir(req, res);
});

router.delete("/musica-descurtir", function (req, res) {
musicaController.descurtir(req, res);
});

router.post("/musica-geral", function (req, res) {
  musicaController.todasMusica(req, res);
});

router.post("/musica-verlikes", function (req, res) {
  musicaController.verMusica(req, res);
});
module.exports = router;    