associations = { 'i'=>'1', 'j'=>'1',
  'a'=>'2', 'b'=>'2', 'c'=>'2'   3 def
4 gh    5 kl    6 mn
7 prs   8 tuv   9 wxy
        0 oqz}


while(number = gets).chomp! != "-1"
	count=gets.to_i
	words=Array.new(count).map{|word| word=gets.chomp }
	puts words.join(', ')



end
