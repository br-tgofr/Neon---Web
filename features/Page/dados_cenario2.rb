class Cenario2 < SitePrism::Page
	element :login, :id, 'txtUsername'
	element :password, :id, 'txtPassword'
	element :botao_login, :id, 'btnLogin'
end