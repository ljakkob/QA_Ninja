Before do
   visit 'https://marktasks.herokuapp.com/api/reset/larissa.jacob@gmail.com?clean=full'
   
   @login = LoginPage.new
   @tasks = TasksPage.new
   @perfil = PerfilPage.new
end

Before('@auth') do
    @login.load
    @login.logar('eu@papito.io', '123456')
  end

After ('@logout') do
    @tasks.nav.bye
end

After ('@perfil_logout') do
     @perfil.nav.bye
end