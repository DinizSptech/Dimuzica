var express = require("express");
var router = express.Router();

var graficoController = require("../controllers/graficoController");

router.get("/grafico-dados", function (req, res) {
    graficoController.buscarGrafico(req, res);
});

router.get("/grafico-likes", function (req, res) {
    graficoController.buscarLikes(req, res);
});

router.get("/kpi-users", function (req, res) {
    graficoController.pegarUsers(req, res);
});
module.exports = router;     