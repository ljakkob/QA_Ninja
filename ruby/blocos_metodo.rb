def achou_bug (resposta)
	if resposta == true
	'Informe o desenvolvedor'
	else
	'Vamos pra producao'
	end
end


def perguntar (qa, nome, equipe)
puts qa.to_s + ') qual o resultado do teste? 0- Sem bugs / 1- Com Bugs'
bug = gets.to_i
bug = (bug==1) ? true : false
puts achou_bug (bug)
end

def nome_qa(registro)
	if registro == 22
	'Oscar'
	else
		'papini'
	end

end

perguntar 1, nome_qa(22), 1