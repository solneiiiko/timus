count, r = gets.chomp.split("\s")
count = count.to_i
r = r.to_f

result = 1.57*count*r

point1 = point0 = gets.chomp.split("\s").map(&:to_f)

while( pointn=gets )
	pointn = pointn.chomp.split("\s").map(&:to_f)
	result += Math.sqrt( ((point1[0]-pointn[0])*(point1[0]-pointn[0])) + (point1[1]-pointn[1])*(point1[1]-pointn[1]) )
	point1 = pointn.clone
end
result += Math.sqrt( ((point1[0]-point0[0])*(point1[0]-point0[0])) + (point1[1]-point0[1])*(point1[1]-point0[1]) )
	
puts "%.2f" % result