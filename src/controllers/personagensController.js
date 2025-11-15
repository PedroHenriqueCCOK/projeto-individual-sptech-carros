var personagensModel = require("../models/personagensModel");

function listar(req, res) {
    personagensModel.listar().then(function (personagens) {

        if (personagens.length > 0) {
            res.status(200).json(personagens);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar os personagens: ", erro.sqlMessage); // <-- CORRIGIDO
        res.status(500).json(erro.sqlMessage);
    });
}

function buscarPersonagem(req, res) {
    var id = req.body.idServer;
    if (id == undefined) {
        res.status(400).send("Seu ID está undefined!");
    } else {
        personagensModel.buscar(id).then(function (personagens) {
            if (personagens.length > 0) {
                res.status(200).json(personagens);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log("Houve um erro ao buscar os personagens: ", erro.sqlMessage); // <-- CORRIGIDO
            res.status(500).json(erro.sqlMessage);
        });
    }
}

module.exports = {
    listar,
    buscarPersonagem
}