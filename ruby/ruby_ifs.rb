# 	print 'Hello world'
#        puts "Hello world"

puts 'Qual o seu nome ? '
nome = gets

puts 'Qual a sua idade ?'
idade = gets.to_i

if idade < 18 
	puts nome + "voce nao pode tirar cnh"
else
	puts nome + 'voce pode tirar cnh'

end 