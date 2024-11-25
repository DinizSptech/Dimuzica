var musicaModel = require("../models/musicaModel");

function generoMusica(req, res) {
    var genero = req.body.generoServer;
    
  console.log('generoMusica')
        musicaModel.pegarGenero(genero)
            .then( function (resultadoAutenticar){
                res.json({
                  musica_genero: resultadoAutenticar
                });
            }).catch(
                function (erro){
                    console.log(erro);
                    console.log("\nErro em pegar musicas de genero X! Erro: ", erro.sqlMessage);
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

    function todasMusica(req, res) {
      console.log('todasMusica')
            musicaModel.pegarTodas()
                .then( function (resultadoAutenticar){
                    res.json({
                      musica_todas: resultadoAutenticar
                    });
                }).catch(
                    function (erro) {
                        console.log(erro);
                        console.log("\nErro em pegar todas as musicas! Erro:", erro.sqlMessage);
                        res.status(500).json(erro.sqlMessage);
                    }
                );
        }

module.exports = {
    generoMusica,
    todasMusica
}