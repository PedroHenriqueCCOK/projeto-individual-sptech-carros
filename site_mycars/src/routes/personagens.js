var express = require("express");
var router = express.Router();
var personagensController = require("../controllers/personagensController");

router.get("/listar_personagens", function (req, res) {
    personagensController.listar(req, res);
})
router.post("/buscar", function (req, res) {
    personagensController.buscarPersonagem(req, res);
})

module.exports = router;

