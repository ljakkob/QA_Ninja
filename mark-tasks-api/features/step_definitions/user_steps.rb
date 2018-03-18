Dado("que o usuário informou os seguintes dados:") do |table|
 puts @user = table.rows_hash
 HTTparty.get("http://marktasks.herokuapp.com/api/reset/#{@user['email']}?clean=full")
  end
  
  Quando("eu faço uma solicitação POST para o serviço user") do
   @result = HTTparty.post(
       'http://marktasks.herokuapp.com/api/user',
       headers: { 'Content-Type' => 'application/json'},
       body: @user.to_json)
  end
  
  Então("o código de resposta HTTP deve ser igual a {string}") do |status_code|
   expect(@result.response.code).to eql status_code
  end
  
  Então("no corpo da resposta do ver o id do usuário") do
  puts @result.parsed_response['data']
  expect(@result.parsed_response['data']).to have_key('id')
  expect(@result.parsed_response['data'] ['id'].length).to eql 17
  end
  
  Então("no corpo da resposta do ver uma mensagem {string}") do |string|
   expect( @response.parsed_response ['message']).to eql message
  end