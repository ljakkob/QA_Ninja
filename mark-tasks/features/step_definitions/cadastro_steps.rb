Dado('que eu acessei a página de cadastro') do
  visit 'http://marktasks.herokuapp.com/register/'
end

Dado('possuo os seguintes dados:') do |table|
  @cadastro = table.rows_hash
end

Quando('faço o cadastro') do
  # fill_in (só funciona para ID e Names)
  fill_in 'register_name', with: @cadastro['Nome']
  fill_in 'register_email', with: @cadastro['Email']
  find('input[type=password]').set @cadastro['Senha']

  click_button 'Cadastrar'
end

Então('sou redirecionado para o painel de tarefas') do
  expect(page).to have_content 'Todas as minhas tarefas'
end

Então('devo ver uma mensagem de alerta {string}') do |mensagem|
  expect(page).to have_content mensagem
end