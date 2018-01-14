Dado("que acesse o site orange hrm") do
  visit 'http://opensource.demo.orangehrmlive.com/%20'
  @cenario2 = Cenario2.new
end

Quando("carregar a pagina de login") do
  sleep 1
  assert_text('LOGIN Panel')
end

Quando("inserir os dados icorretos") do
  @cenario2.login.set 'Admin'
  sleep 1
  @cenario2.password.set '123'
  sleep 1
  @cenario2.botao_login.click
end

Então("nao irei conseguir logar no site") do
	sleep 1
	assert_text('Invalid credentials')
end

Quando("inserir os dados corretos") do
  @cenario2.login.set 'Admin'
  sleep 1
  @cenario2.password.set 'admin'
  sleep 1
  @cenario2.botao_login.click
end

Então("irei logar com sucesso") do
  sleep 1
  assert_text('Welcome Admin')
end