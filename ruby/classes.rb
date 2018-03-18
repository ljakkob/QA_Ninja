class Testador
attr_accessor :nome, :email

    def initialize (nome, email)
        @nome = nome
        @email = email
    end

    def testa    
        puts @nome + ' diz achei um bug!'
    end
end

class Desenvolvedor
    attr_accessor :nome, :email

    def initialize (nome, email)
        @nome = nome
        @email = email
    end

    def coda  
        puts @nome + ' criou um bug!'
    end
end


joao = Testador.new('João', 'joao@teste.com')
joao.testa

maria = Desenvolvedor.new('Maria', 'maria@gmail.com')
maria.coda