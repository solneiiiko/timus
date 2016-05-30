h, w, n = gets.chomp.split("\s").map(&:to_i)

row = 1
temp_w = w + 1
while (world=gets)
	world = world.chomp.size + 1
	if ( temp_w-world >=0 )
		temp_w-=world
	else
		row+=1
		temp_w = w + 1 - world
	end
end
row-=1 if (temp_w == w + 1)

puts (row+h-1)/h