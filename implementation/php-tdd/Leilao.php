<?php
	class Leilao {
		private $descricao;
		private $lances;
		
		function __construct($descricao) {
			$this->descricao = $descricao;
			$this->lances = array();
		}
		
		public function propoe(Lance $lance) {
			$this->lances[] = $lance;
		}

		public function getDescricao() {
			return $this->descricao;
		}

		public function getLances() {
			return $this->lances;
		}
	}
?>