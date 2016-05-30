while( string=gets ) do
	n, a, b = string.split("\s").map(&:to_i)
	puts n*a*b*2
end
