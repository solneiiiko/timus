n = gets.chomp.to_i

old_val = Array.new(n).map{ gets.chomp.split("\s") }

i = 0

new_valB = []
new_valE = []
while(i<n)
  j = 0
  while(j<=i)
  	new_valB << old_val[i-j][j]
  	# new_valE << old_val[n-1-i-j][1+i+j]
  	# puts "i:#{i} ; j:#{j}"
  	# puts "[[#{n-1-i-j}],[#{1+i+j}]]"
  	j+=1
  end
  j = 1
  while(i+j<n)
  	new_valE << old_val[n-j][i+j]
  	j+=1
  end
  i+=1
end

puts new_valB.join("\s") + ' '+ new_valE.join("\s")