#language:pt

Funcionalidade: Saque no caixa eletronico
    Sendo um cliente correntista do banco
    Posso sacar dinheiro no caixa eletronico
    Para que eu possa comprar em estabelecimentos que n aceitam cartão de crédito

    Cenario: Saque no caixa

        Dado que eu sou um correntista
        E meu saldo é de R$ 500
        Quando faço um saque no valor de R$ 100
        Então vejo a mensagem "Saque com sucesso. Aguarda a contagem das notas!"
        E meu saldo final será de R$ 400
    
    Cenario: Valor máximo permitido

        Dado que eu sou um correntista
        E meu saldo é de R$ 1000
        Quando faço um saque no valor de R$ 701
        Então vejo a mensagem "Valor permitido para saque é de R$ 700"

    Cenario: Saldo insuficiente
    
        Dado que eu sou um correntista
        E meu saldo é de R$ 100
        Quando faço um saque no valor de R$ 200
        Então vejo a mensagem "Saldo insuficiente"
        E meu saldo final será de R$ 100

