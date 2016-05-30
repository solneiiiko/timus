count = gets#.chomp.to_i
res = []
while( n = gets )
	n = n.chomp.to_i
	i = Math.sqrt(1+8*(n-1))

	res << ((i == i.to_i && i/2 == i/2.0) ? 1 : 0)
end

puts res.join("\s")