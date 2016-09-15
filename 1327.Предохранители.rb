a = gets.to_i
b = gets.to_i

count = 0
(a..b).each{ |i| count+=1 if i%2==1 }
puts count