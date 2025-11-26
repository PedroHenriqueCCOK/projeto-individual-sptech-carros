var dashboardModel = require("../models/dashboardModel");

function buscarKpiPersonagemFav(req, res) { 

    dashboardModel.buscarKpiPersonagemFav().then(function (resultado) {
            if (resultado.length > 0) {
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log("Houve um erro ao buscar a kpi de personagem favorito.", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
    
}
function buscarKpiPontuacao(req, res) {
    var idUsuario = req.body.idUsuarioServer

    dashboardModel.buscarKpiPontuacao(idUsuario).then(function (resultado) {
            if (resultado.length > 0) {
                console.log(resultado);
                
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log("Houve um erro ao buscar a kpi de personagem favorito.", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
    
}
function buscarKpiTempo(req, res) {
    var idUsuario = req.body.idUsuarioServer

    dashboardModel.buscarKpiTempo(idUsuario).then(function (resultado) {
            if (resultado.length > 0) {
                console.log(resultado);
                
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log("Houve um erro ao buscar a kpi de personagem favorito.", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
    
}
function buscarKpiObstaculo(req, res) {
    var idUsuario = req.body.idUsuarioServer

    dashboardModel.buscarKpiObstaculo(idUsuario).then(function (resultado) {
            if (resultado.length > 0) {
                console.log(resultado);
                
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log("Houve um erro ao buscar a kpi de personagem favorito.", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
    
}
function buscarRanking(req, res) {

    dashboardModel.buscarRanking().then(function (resultado) {
            if (resultado.length > 0) {
                console.log(resultado);
                
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log("Houve um erro ao buscar a kpi de personagem favorito.", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
    
}
function montarGraficoPizza(req, res) {
    var idUsuario = req.body.idUsuarioServer

    dashboardModel.montarGraficoPizza(idUsuario).then(function (resultado) {
            if (resultado.length > 0) {
                console.log(resultado);
                
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log("Houve um erro ao buscar a kpi de personagem favorito.", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
    
}
function montarGraficoBarra(req, res) {
    var idUsuario = req.body.idUsuarioServer
    dashboardModel.montarGraficoBarra(idUsuario).then(function (resultado) {
            if (resultado.length > 0) {
                console.log(resultado);
                
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log("Houve um erro ao buscar a kpi de personagem favorito.", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
    
}
module.exports = {
    buscarKpiPersonagemFav,
    buscarKpiPontuacao,
    buscarKpiTempo,
    buscarKpiObstaculo,
    buscarRanking,
    montarGraficoPizza,
    montarGraficoBarra
}


