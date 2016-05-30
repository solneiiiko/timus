numbers = gets.split("\s").map(&:to_i)

change = lambda{|index|
  numbers[index] = numbers[index] == 1 ? 0 : 1
}

a = [
  (numbers[1]+numbers[2]+numbers[3]) % 2,
  (numbers[0]+numbers[2]+numbers[3]) % 2,
  (numbers[0]+numbers[1]+numbers[3]) % 2
]
if ( a[0]!=numbers[4] && a[1]!=numbers[5] && a[2]!=numbers[6] )
  change.call(3)
elsif ( a[0]!=numbers[4] && a[2]!=numbers[6] )
  change.call(1)
elsif ( a[0]!=numbers[4] && a[1]!=numbers[5])
  change.call(2)
elsif ( a[1]!=numbers[5] && a[2]!=numbers[6])
  change.call(0)
elsif (a[0]!=numbers[4])
  change.call(4)  
elsif (a[1]!=numbers[5])
  change.call(5)  
elsif (a[2]!=numbers[6])
  change.call(6)
end

puts numbers.join("\s")
