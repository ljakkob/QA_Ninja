Dado("que eu estou autenticado com {string} e {string}") do |email,senha|
    @login.load
    @login.logar(email,senha)

  end
  
  Dado("acesso meu perfil") do
   @tasks.nav.menu_usuario.click
   @tasks.nav.meu_perfil.click
  end
  
  Quando("completo o meu cadastro com emprea {string} e {string}") do |empresa, cargo|
   @perfil.atualiza(empresa,cargo) 
  end
  
  Então("vejo a mensagem {string}") do |mensagem|
    expect(@perfil.formulario).to have_content mensagem
  end