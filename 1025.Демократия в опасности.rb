count = gets.to_i
puts gets.split.map(&:to_i).sort[0,(count>>1)+1].map{|e| (e>>1)+1}.inject(:+)
