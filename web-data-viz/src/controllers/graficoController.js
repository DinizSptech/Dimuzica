var graficoModel = require("../models/graficoModel");

function buscarGrafico(req, res) {
  console.log('buscarGrafico')
        graficoModel.buscar_genero()
            .then( function (resultadoAutenticar) {
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

    function buscarLikes(req, res) {
        console.log('buscarLikes')
              graficoModel.buscar_likes()
                  .then( function (resultadoAutenticar) {
                      res.json({
                        likes: resultadoAutenticar
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
    buscarGrafico,
    buscarLikes
}