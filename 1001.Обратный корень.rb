a = []
while (string = gets) do
	a += string.split().map{|el|"%.4f" % Math.sqrt(el.to_i)}
end
puts a.reverse