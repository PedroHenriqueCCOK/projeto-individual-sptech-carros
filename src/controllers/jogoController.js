var jogoModel = require("../models/jogoModel");

function registrar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var usuario = req.body.usuarioServer;
    var corredor = req.body.corredorServer;
    var tempo = req.body.tempoServer;
    var pontuacao = req.body.pontuacaoServer;
    var colisaoCacto = req.body.colisaoCactoServer;
    var colisaoFeno = req.body.colisaoFenoServer;
    var colisaoBarril = req.body.colisaoBarrilServer;

    // Faça as validações dos valores
    if (usuario == undefined) {
        res.status(400).send("Seu usuario está undefined!");
    } else if (corredor == undefined) {
        res.status(400).send("Seu corredor está undefined!");
    } else if (tempo == undefined) {
        res.status(400).send("Seu tempo está undefined!");
    } else if (pontuacao == undefined) {
        res.status(400).send("Sua pontuação está undefined!");
    } else if (colisaoCacto == undefined) {
        res.status(400).send("Sua colisão cacto favorito está undefined!");
    } else if (colisaoFeno == undefined) {
        res.status(400).send("Sua colisão feno está undefined!");
    } else if (colisaoBarril == undefined) {
        res.status(400).send("Sua colisão barril está undefined!");
    } else {

        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        jogoModel.registrar(usuario, corredor, tempo, pontuacao, colisaoCacto, colisaoFeno, colisaoBarril)
            .then(
                function (resultado) {
                    res.status(201).send("Registros inseridos com scesso!")
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {
    registrar
}