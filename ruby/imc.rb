def calular_imc(peso, altura)
	imc= peso/altura
	puts "IMC  #{imc.round(2)}"	
end

begin
calular_imc(64, 1.69)
puts 'Deu bom'

rescue Exception => e
	puts 'Deu ruim'
	puts e.message
	puts e.backtrace
end