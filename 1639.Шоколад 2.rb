a, b = gets.chomp.split("\s").map(&:to_i)

count = a*b

puts (count >> 1 << 1) == count ? '[:=[first]' : '[second]=:]'