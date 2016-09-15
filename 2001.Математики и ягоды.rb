
a = []
3.times{ a << gets.split.map(&:to_i) }

x1 = a[0][0] - a[2][0]
x2 = a[0][1] - a[1][1]
puts [x1, x2].join(' ')