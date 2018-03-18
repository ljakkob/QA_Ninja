@arr = []
$option = 0

def add()
	puts 'Informar o cenário de teste'
	name = gets.chomp
	$arr << name
end

def list()
	arr.each do |item|
	puts item
	end
end


begin
puts '######## Test Link #######'
puts '1- Adicionar CT'
puts '2- Listar Comentários'
puts '3- Sair'
puts '#########################'

$option = gets.to_i


case $option
	when 1
		add()
	when 2
		list()
	else
	puts 'Opcoes invalidas'
	end
end while $option !=3
		