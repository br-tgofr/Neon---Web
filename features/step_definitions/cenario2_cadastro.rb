Dado("que acessei o site orange hrm") do
  visit 'http://opensource.demo.orangehrmlive.com/%20'
  	@cenario2_cadastro = Cenario2_Cadastro.new
end

Quando("estiver logado e clicar na opção pim") do
  @cenario2_cadastro.login.set 'Admin'
  sleep 1
  @cenario2_cadastro.password.set 'admin'
  sleep 1
  @cenario2_cadastro.botao_login.click
  sleep 1
 	@cenario2_cadastro.pim.click
end

Então("irei acessar a lista de usuarios para cadastrar um novo usuario com sucesso") do
  @cenario2_cadastro.botao_add.click
  @cenario2_cadastro.first_name.set Faker::Name.first_name
  sleep 1
  @cenario2_cadastro.middle_name.set 'Robert'
  sleep 1
  @cenario2_cadastro.last_name.set Faker::Name.last_name
  sleep 1
  @cenario2_cadastro.check_box_login.click
  sleep 1
  @cenario2_cadastro.user_name.set 'Robert'
  sleep 1
  @cenario2_cadastro.user_password.set 'admin'
  sleep 1
  @cenario2_cadastro.re_password.set 'admin'
  sleep 1
  @cenario2_cadastro.botao_save.click
  sleep 1
  @cenario2_cadastro.botao_edit.click
  sleep 1
  @cenario2_cadastro.license_number.set Faker::Number.number
  sleep 1
  @cenario2_cadastro.other_id.set Faker::Number.number
  sleep 1
  @cenario2_cadastro.license_expiry_date.click
  @cenario2_cadastro.day_expiry.click
  sleep 1
  @cenario2_cadastro.genero.click
  sleep 1
  @cenario2_cadastro.nacionalidade.click
  page.execute_script "window.scrollBy(0,500)"
  sleep 1
  @cenario2_cadastro.brazilian.click
  sleep 1
  @cenario2_cadastro.maritial_status.click
  @cenario2_cadastro.single.click
  sleep 1
  @cenario2_cadastro.date_birth.click
  @cenario2_cadastro.month.click
  @cenario2_cadastro.year_birth.click
  @cenario2_cadastro.day_birth.click
  sleep 1
  @cenario2_cadastro.botao_save.click
end