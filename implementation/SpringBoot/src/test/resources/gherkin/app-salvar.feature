Feature: app-salvar 

Background: 
	Usuário navega para o app
  	Given Estou na tela de Listar

Scenario: 
	When Eu entro com o nome "Paulo" 
	And Eu entro com o email "sampaio@hannabarbera.com" 
	And Eu entro como telefone "551198765432" 
	Given Clico no botão Convidar
	Then É cadastrado o usuário
