n,k = gets.chomp.split("\s")
n = n.to_i
k = k.size

result = n

index = 0

while ((index+=k)<n)
	result *= n-index
end
puts result