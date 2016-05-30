remains, k = gets.chomp.split("\s").map(&:to_i)

iteration = 0
done = 1


while (done < remains && done <= k)
	done = done << 1
	iteration+=1
end

balance = remains - done
iteration += (balance+k-1)/k if (balance>0)

puts iteration