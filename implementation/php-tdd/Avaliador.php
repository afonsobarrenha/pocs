<?php

    class Avaliador {

        private $maiorDeTodos = -INF;
        private $menorDeTodos = INF;

        public function avalia(Leilao $leilao) {
            foreach($leilao->getLances() as $lance) {
                if($lance->getValor() > $this->maiorDeTodos)
                    $this->maiorDeTodos = $lance->getValor();
                else if($lance->getValor() < $this->menorDeTodos)
                    $this->menorDeTodos = $lance->getValor();
            }
        }

        public function getMaiorLance() {
            return $this->maiorDeTodos;
        }

        public function getMenorLance() {
            return $this->menorDeTodos;
        }
    }
    
?>