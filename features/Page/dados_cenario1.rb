class Cenario1 < SitePrism::Page
	element :botao_scroll_down, :xpath, '//*[@id="fp-nav"]/span[2]'
	element :botao_perguntas, :xpath, '/html/body/header/div/nav/ul/li[1]/a'
	element :botao_expandir, :xpath, '/html/body/main/article/div[2]/article/section[1]/header/button'
	element :botao_expandir_submenu, :xpath, '/html/body/main/article/div[2]/article/section[1]/article/ul/li[4]/header/button'
end
