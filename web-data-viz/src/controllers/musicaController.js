var musicaModel = require("../models/musicaModel");

function generoMusica(req, res) {
  console.log('generoMusica')
        musicaModel.pegarGenero()
            .then( function (resultadoAutenticar){
                res.json({
                  lista: resultadoAutenticar
                });
            }).catch(
                function (erro){
                    console.log(erro);
                    console.log("\nHouve um erro ao realizar o login! Erro: ", erro.sqlMessage);
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

    function todasMusica(req, res) {
      console.log('todasMusica')
            musicaModel.pegarTodas()
                .then( function (resultadoAutenticar){
                    res.json({
                      lista: resultadoAutenticar
                    });
                }).catch(
                    function (erro) {
                        console.log(erro);
                        console.log("\nHouve um erro ao realizar o login! Erro: ", erro.sqlMessage);
                        res.status(500).json(erro.sqlMessage);
                    }
                );
        }

module.exports = {
    generoMusica,
    todasMusica
}