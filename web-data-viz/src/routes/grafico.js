var express = require("express");
var router = express.Router();

var graficoController = require("../controllers/graficoController");

router.post("/grafico-dados", function (req, res) {
    graficoController.buscarGrafico(req, res);
});

router.post("/grafico-likes", function (req, res) {
    graficoController.buscarLikes(req, res);
});
module.exports = router;     