a = gets.chomp.to_i
b = gets.chomp.to_i

def even(num)
	return (num - (num >> 1 << 1) == 0)
end

puts ((even(a) || !even(b)) ? 'yes' : 'no')