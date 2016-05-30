n, k = gets.split("\s").map(&:to_i)
if n==0
	puts 0
	exit
end
if n<k
	puts 2
	exit
end  
puts(((n*2.0 + k-1)/k).to_i)

