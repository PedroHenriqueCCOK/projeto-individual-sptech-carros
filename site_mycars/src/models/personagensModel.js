const { bus } = require("nodemon/lib/utils");
var database = require("../database/config");
function listar() {
    console.log("ACESSEI O PERSONAGEM MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():");

    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucaoSql = `
        SELECT id, nome, imagem_index, imagem_personagem, descricao, rotulo, modelo, equipe, aparicao, nascimento FROM personagens;
    `;
    return database.executar(instrucaoSql);
}

function buscar(id) {
    console.log("ACESSEI O PERSONAGEM MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():");
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucaoSql = `
        SELECT id, nome, imagem_index, imagem_personagem, descricao, rotulo, modelo, equipe, aparicao, nascimento FROM personagens WHERE id = ${id};
    `;
    return database.executar(instrucaoSql);
}
module.exports = { listar, buscar }