n = gets.chomp.to_i

a, b = n<=0 ? [n,1] : [1,n]

count = b-a+1

puts ((a+b)/2.0 * count).to_i