#language: pt
#utf-8


Funcionalidade: Validar texto
	Eu como usuario
	Quero validar um texto dentro do site neon
	Para saber as informações de um cartao




	Cenário: Validar texto dentro da pagina perguntas
		Dado que acesse o site do banco neon
		Quando carregar a pagina de perguntas 
		E validar o texto sobre o cartão
		Então verei o texto selecionado validado com sucesso
