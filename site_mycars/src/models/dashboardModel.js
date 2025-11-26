var database = require("../database/config");



function buscarKpiPersonagemFav() {
    var instrucaoSql = `
        SELECT
            p.nome,
            p.imagem_personagem,
            u.fkPersonagemFav,
            COUNT(u.fkPersonagemFav) AS personagemFavorito
        FROM
            usuario AS u
                JOIN
            personagens AS p ON u.fkPersonagemFav = p.id
        GROUP BY u.fkPersonagemFav
        ORDER BY personagemFavorito DESC
        LIMIT 1;
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function buscarKpiPontuacao(idUsuario) {
    var instrucaoSql = `
        SELECT
            MAX(pontuacao) AS pontuacao
        FROM jogo 
            WHERE fkUsuario = ${idUsuario}
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarKpiTempo(idUsuario) {
    var instrucaoSql = `
        SELECT 
            MAX(j.tempo) AS tempo
        FROM
            jogo AS j
                JOIN
            usuario AS u ON u.idUsuario = j.fkUsuario
        WHERE
            u.idUsuario = ${idUsuario};    
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarKpiObstaculo(idUsuario) {
    var instrucaoSql = `
        SELECT 
            SUM(j.colisaoCacto) AS cacto,
            SUM(j.colisaoFeno) AS feno,
            SUM(j.colisaoBarril) AS barril
        FROM
            jogo AS j
                JOIN
            usuario AS u ON u.idUsuario = j.fkUsuario
        WHERE
            u.idUsuario = ${idUsuario};    
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function buscarRanking() {
    var instrucaoSql = `
        SELECT DISTINCT
            u.nome, j.tempo, j.pontuacao
        FROM
            usuario AS u
                JOIN
            jogo AS j ON j.fkUsuario = u.idUsuario
        ORDER BY j.pontuacao DESC 
        LIMIT 10;  
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function montarGraficoPizza(idUsuario) {
    var instrucaoSql = `
        SELECT
            j.resultado
        FROM
            jogo AS j
                JOIN
            usuario AS u ON u.idUsuario = j.fkUsuario
            WHERE u.idUsuario = ${idUsuario}; 
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function montarGraficoBarra(idUsuario) {
    var instrucaoSql = `
        SELECT 
            c.nome, 
            COUNT(j.fkCorredor) AS quantidade,
            c.cor
        FROM
            jogo AS j
                JOIN
            usuario AS u ON u.idUsuario = j.fkUsuario
                JOIN
            corredor AS c ON j.fkCorredor = c.idCorredor
        WHERE
            u.idUsuario = ${idUsuario}
        GROUP BY j.fkCorredor;    
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
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