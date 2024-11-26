var musicaModel = require("../models/musicaModel");

function curtir(req, res) {
    var musica = req.body.musicaServer;
    var usuario = req.body.userServer;

  console.log('curtir')
        musicaModel.insert_curtida(musica, usuario)
            .then( function (resultadoAutenticar){
                console.log(resultadoAutenticar)
            }).catch(
                function (erro){
                    console.log(erro);
                    console.log("\nErro em curtir: ", erro.sqlMessage);
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

    function descurtir(req, res) {
        var musica = req.body.musicaServer;
        var usuario = req.body.userServer;
    
      console.log('descurtir')
            musicaModel.delete_curtida(musica, usuario)
                .then( function (resultadoAutenticar){
                    console.log(resultadoAutenticar)
                }).catch(
                    function (erro){
                        console.log(erro);
                        console.log("\nErro no dislike: ", erro.sqlMessage);
                        res.status(500).json(erro.sqlMessage);
                    }
                );
        }

        function verMusica(req, res) {
            var usuario = req.body.userServer;
    
          console.log('verMusica')
                musicaModel.ver_curtidas(usuario)
                    .then( function (resultadoAutenticar){
                        res.json({
                          curtidas: resultadoAutenticar
                        });
                    }).catch(
                        function (erro) {
                            console.log(erro);
                            console.log("\nErro em pegar todas as musicas! Erro:", erro.sqlMessage);
                            res.status(500).json(erro.sqlMessage);
                        }
                    );
                }

    function todasMusica(req,  res) {
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
    curtir,
    descurtir,
    verMusica,
    todasMusica
}