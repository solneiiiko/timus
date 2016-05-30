@numbers = []
@count = 0

def ending(n, i)
	if (@numbers[i][0]<n)
		puts @count
		exit
	end
end

while ( count = gets ) do
	@numbers << ([] + [count.chomp.to_i] + gets.chomp.split("\s").map(&:to_i))
end

indexes = Array.new(@numbers.count, 1)
current = @numbers[0][indexes[0]]

while(true) do
	change_current = false
	indexes.each_with_index{ |index_n, index_i|
		ending(index_n, index_i)
		while (@numbers[index_i][index_n]<current)
			index_n = indexes[index_i] = indexes[index_i] + 1
			ending(index_n, index_i)
		end
		unless (@numbers[index_i][index_n]==current)
			change_current = true
			current = @numbers[index_i][index_n]
			break
		end
	}

	unless change_current
		@count+=1
		indexes[0] += 1
		current = @numbers[0][indexes[0]]
	end
end



