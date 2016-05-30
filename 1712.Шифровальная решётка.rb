cipher = []
for i in 0..3
  a = gets.chomp
  for j in 0..3
    cipher<<[i,j] if a[j] == 'X'
  end
end

result = []
chars = []
for i in 0..3
  chars[i] = gets.chomp
end

for k in 0..3
  cipher.map!{|i,j|
    result << chars[i][j]
    [j, 3-i]
  }.sort!{|a,b| a.join('')<=>b.join('')}
end

puts result.join("")
