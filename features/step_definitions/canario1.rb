Dado("que acesse o site do banco neon") do
  visit 'https://www.banconeon.com.br/'
  	@cenario1 = Cenario1.new
  	@cenario1.botao_scroll_down.click
  	sleep 2
end

Quando("carregar a pagina de perguntas") do
  	@cenario1.botao_perguntas.click
end

Quando("validar o texto sobre o cartão") do
  	@cenario1.botao_expandir.click
  	sleep 1
	page.execute_script "window.scrollBy(0,800)"
	@cenario1.botao_expandir_submenu.click
	assert_text('Não! O Neon é muito mais que um cartão.
				Somos um banco. Com uma conta Neon você pode fazer pagamentos,
				transferências, receber grana via boletos e ainda usar seu cartão
				de débito em qualquer lugar do mundo. Tudo isso sem cobrar taxas 
				absurdas, filas e sem aquela papelada e burocracia que os bancos antigos costumam ter.')
end

Então("verei o texto selecionado validado com sucesso") do
  	has_xpath?('/html/body/main/article/div[2]/article/section[1]/article/ul/li[4]/article')
  	sleep 1
end