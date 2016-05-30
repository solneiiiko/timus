k, n = gets.chomp.split("\s").map(&:to_i)
a = gets.chomp.split("\s").map(&:to_i)

count=0
a.each{ |i|
	count += i-k
	count = 0 if count < 0
}

puts count