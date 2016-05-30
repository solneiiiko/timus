def e(a, b)
	count = 0
	if (a-2>0)
		count+=1 if (b-1>0)
		count+=1 if (b+1<9)
	end
	if (a+2<9)
		count+=1 if (b-1>0)
		count+=1 if (b+1<9)
	end
	count
end

res = []
test_count = gets.to_i
while (position = gets)
	h = position[1].to_i
	v = (position[0].ord - 96)
	res << e(v, h) + e(h, v)		
end

puts res.join("\n")
