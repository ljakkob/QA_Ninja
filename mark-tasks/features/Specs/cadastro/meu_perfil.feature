#language:pt
Funcionalidade: Meu perfil
    Parea que eus possa ter meus dados atualizados
    Sendo um usuário
    Posso completar meu cadastro

    @perfil @logout
    Esquema do Cenario: Atualizar meu perfil

        O usuário completa o cadastro com empresa e seleciona o cargo

        Dado que eu estou autenticado com "lari.jacob@gmail.com" e "123456"
        E acesso meu perfil
        Quando completo o meu cadastro com emprea "<empresa>" e "<cargo>"
        Então vejo a mensagem "Perfil atualizado com sucesso."

         Exemplos:
            | empresa        | cargo      |
            | QA Ninja       | Developer  |
            | Dotz           | QA         |
            | Microsoft      | CTO        |
            | Google         | Estagiario |
            | Dogao do betão | CEO        |
