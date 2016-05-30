g, l = gets.chomp.split("\s").map(&:to_i)

count = g+l-1
puts [count-g, count-l].join("\s")