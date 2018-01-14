#language: pt
#utf-8


Funcionalidade: Login
	Eu como usuario
	Quero tentar logar com minhas credenciais
	Para conseguir acessar meu cadastro



	Cenário: Efetuar login com insucesso
		Dado que acesse o site orange hrm
		Quando carregar a pagina de login
		E inserir os dados incorretos
		Então nao irei conseguir logar no site


	Cenário: Efetuar login com sucesso
		Dado que acesse o site orange hrm
		Quando carregar a pagina de login
		E inserir os dados corretos
		Então irei logar com sucesso