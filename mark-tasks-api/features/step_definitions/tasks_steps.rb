Dado("que o usuário está autenticado") do |user|
   @result =  HTTparty.post(
        'http://marktasks.herokuapp.com/api/login',
        headers: { 'Content-Type' => 'application/json'},
        body: @user.rows_hash.to_json 
        )
        puts @token = @result.parsed_response['data']
  end
  
  Dado("o ususário @post_tasksinformou a seguinte tarefa") do |task|
    @task = table.rows_hash
    end
  
  Dado("o usuário tagueou esta tarefa com") do |table|
    # @task ['tags']
    # table.hashes.each do |t|
    #     puts t['tag'] - pega um elemento por vez
    # end

    @task ['tags'] = []
    table.hashes.each do |t|
        puts t['tags'].push(t['tag']) 
    end 

  end
  
  Quando("faço uma solicitação POST para o serviço tasks") do
    @result = HTTparty.post(
        'http://marktasks.herokuapp.com/api/tasks',
        headers: { 'Content-Type' => 'application/json',
                    'X-User-id' => @token['userId'],
                    'X-Auth-token' =>@token['authToken']
        },

        body: @task.to_json
    )
  end
  
  Então("esta tarefa deve ser cadastrada com sucesso") do
    expect(@result.parsed_response['message']).to eql 'The task has been created'
  end