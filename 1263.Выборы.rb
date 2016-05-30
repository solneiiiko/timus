
n, m = gets.chomp.split("\s").map(&:to_i)

result = Array.new(n, 0)

while( k = gets )
	result[k.chomp.to_i-1] += 1
end

m = 100.0/m

puts result.map{ |e| ('%.2f' % (e*m)) + '%'}.join("\n")