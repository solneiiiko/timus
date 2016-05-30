string = gets.chomp
result = []
string.each_char{|char|
  if char==result[-1]
    result.pop
  else
    result.push(char)
  end
}

puts result.join()