n = gets.chomp.to_i
a = gets.chomp.split("\s").map(&:to_i)

current_sum = a[0]+a[1]+a[2]
result = [ current_sum, 2 ]
i = 1
while ( (i+=1)<n-1 )
	next if ( a[i+1]<a[i-2] )
	current_sum = a[i+1] + a[i] + a[i-1]
	result = [current_sum, i+1] if current_sum > result[0]
end
puts result.join("\s")