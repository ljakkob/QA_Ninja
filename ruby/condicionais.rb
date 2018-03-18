puts 'Qual o seu nome ? '
nome = gets.chomp

puts 'Qual a sua idade ?'
idade = gets.to_i

puts 'Deseja beber algo? 1- Sim, 2- Nao'
bebida = gets.to_i

if bebida == 1
	if idade >= 18
		puts 'Servindo uma cerveja'
	elsif idade >=15
			puts "Servindo um suco"
		else
			puts 'Servindo um leite com toddy'
		end	
end


