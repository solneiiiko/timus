n = gets.chomp.to_i

a = [((n-1)*n)/2+1]
for i in 1..(n-1)
	a << (a[i-1]+i-n)
end
puts a.join("\s")

a11 = 0
for i in 0..(n-2)
	a11 = a[0]+n-i
	a = [a11] + a[0..-2].map{|e|e+1}
	puts a.join("\s")
end