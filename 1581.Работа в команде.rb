n = gets.chomp.to_i

arr = gets.split("\s")

res = [0]
beg = arr[0].to_i
arr.each{|e|
	e = e.to_i
	if (beg == e)
		res[-1]+=1
	else
		res << beg
		res << 1
		beg = e
	end
}
res << beg
puts res.join("\s")