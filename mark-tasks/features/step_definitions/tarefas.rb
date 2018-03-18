Dado("que eu tenho uma nova tarefa com os atributos:") do |table|
  @tarefa = table.rows.hash
  puts @tarefa
  end
  
  Quando("faço o cadastro desta tarefa") do
  @tasks.botao_novo.click
  @tasks.adicionar.nova(@tarefa['titulo'], @tarefa['data'])
  end
  
  Então("devo ver este cadastro no painel de atividades com status {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end