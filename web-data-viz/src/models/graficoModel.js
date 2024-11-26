var database = require("../database/config")

function buscar_genero() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function buscar_genero(): ")
    var instrucaoSql = `
        SELECT genero,count(genero) as qtd_genero FROM usuario GROUP BY genero;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscar_likes() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function buscar_likes(): ")
    var instrucaoSql = `
        SELECT titulo,count(fkMusica) as qtd_likes FROM musica JOIN curtida ON idMusica = fkMusica GROUP BY titulo ORDER BY qtd_likes DESC;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscar_genero,
    buscar_likes
};