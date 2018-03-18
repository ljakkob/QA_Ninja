arr = ['item 1', 'item2', 'item3']

for item in arr 
	puts item
end

arr.each do|item|
	puts item
end

init = 0
max = 10

begin
	puts "enquanto #{init} for menor que #{max}"
	init+=1
end while  init < max
	
