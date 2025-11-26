var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashboardController");

router.get("/buscarKpiPersonagemFav", function (req, res) {
    dashboardController.buscarKpiPersonagemFav(req, res);
});

router.post("/buscarKpiPontuacao", function (req, res) {
    dashboardController.buscarKpiPontuacao(req, res);
});
router.post("/buscarKpiTempo", function (req, res) {
    dashboardController.buscarKpiTempo(req, res);
});
router.post("/buscarKpiObstaculo", function (req, res) {
    dashboardController.buscarKpiObstaculo(req, res);
});
router.get("/buscarRanking", function (req, res) {
    dashboardController.buscarRanking(req, res);
});
router.post("/montarGraficoPizza", function (req, res) {
    dashboardController.montarGraficoPizza(req, res);
});
router.post("/montarGraficoBarra", function (req, res) {
    dashboardController.montarGraficoBarra(req, res);
});

module.exports = router;