#language: pt

Funcionalidade: Cadastro
    Sendo uma aplicação que recebeu dados do usuário
    Posso solicitar uma requisição do tipo POST
    Para que os dados deste usuário sejam inseridos no sistema

   
    Cenario: Cadastro simplificado

        Dado que o usuário informou os seguintes dados:
            | name     | Larissa                   |
            | email    | larissa.jacob@gmail.com   |
            | password | 123456                    |
        Quando eu faço uma solicitação POST para o serviço user
        Então o código de resposta HTTP deve ser igual a "200"
        E no corpo da resposta do ver o id do usuário

  
    Esquema do Cenario: Campos não enviados
        
          Dado que o usuário informou os seguintes dados:
            | name     | <name>     |
            | email    | <email>    |
            | password | <password> |
        Quando eu faço uma solicitação POST para o serviço user
        Então o código de resposta HTTP deve ser igual a "<status_code>" 
        E no corpo da resposta do ver uma mensagem "<message>"

         Exemplos:
      | name    | email           | password | status_code | message              |
      |         | teste@01.com    | 12345    | 409         | name is required     |
      | Laressa |                 | 123456   | 409         | email is required    |
      | Laressa | email@teste.com |          | 409         | password is required |
