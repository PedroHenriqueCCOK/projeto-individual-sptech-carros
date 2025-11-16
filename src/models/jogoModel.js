var database = require("../database/config");

function registrar(usuario, corredor, tempo, pontuacao, colisaoCacto, colisaoFeno, colisaoBarril, resultadoJogo) {
    console.log("ACESSEI O JOGO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():");
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucaoSql = `
        INSERT INTO jogo (fkUsuario, fkCorredor, tempo, pontuacao, colisaoCacto, colisaoFeno, colisaoBarril, resultado) VALUES ('${usuario}', '${corredor}', '${tempo}', '${pontuacao}', '${colisaoCacto}', '${colisaoFeno}','${colisaoBarril}', '${resultadoJogo}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
module.exports = {registrar}