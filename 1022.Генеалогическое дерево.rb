count = gets.to_i
tree = []
count.times{ tree << gets.split[0..-2].map(&:to_i) }

res = Array.new(count+1){ [] }

tree.each_with_index { |t, i| t.each{ |te| res[te] << i+1 } }

tree = res

res = []

count.times do |i|
  index = 0
  cr = tree.find_index{|t| index+=1 ; index>1 && t.length==0 && !(res.include?(index-1)) }
  tree[1..-1].map{ |t| t.keep_if{|e| e!=cr } ; t }   
  res << cr
end
puts res.join(' ')


