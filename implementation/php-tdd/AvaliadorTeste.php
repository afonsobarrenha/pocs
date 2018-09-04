<?php

require "Usuario.php";
require "Lance.php";
require "Leilao.php";
require "Avaliador.php";

    class AvaliadorTeste extends PHPUnit\Framework\TestCase {

        public function testAceitaLeilaoEmOrdemCrescenteComOutrosValores() {

            $joao = new Usuario("Joao");
            $renan = new Usuario("Renan");
            $felipe = new Usuario("Felipe");

            $leilao = new Leilao("Playstation 3");

            $leilao->propoe(new Lance($joao,1000));
            $leilao->propoe(new Lance($renan,2000));
            $leilao->propoe(new Lance($felipe,3000));

            $leiloeiro = new Avaliador();
            $leiloeiro->avalia($leilao);

            $maiorEsperado = 400;
            $menorEsperado = 250;

            $this->assertEquals($leiloeiro->getMaiorLance(),$maiorEsperado);
            $this->assertEquals($leiloeiro->getMenorLance(),$menorEsperado);

        }
    }

?>