pr = gets.chomp
res = 0
pr.each_char{|char|
	code = char.ord
	if code<=122 && code>=97
		code-=96
		a = code.divmod(3)
		res+=(a[1].zero? ? 3 : a[1])
	else
		if (char=="\s" || char=='.')
			res+=1 
		elsif (char==',')
			res+=2
		else
			res+=3
		end
	end
}
puts res
