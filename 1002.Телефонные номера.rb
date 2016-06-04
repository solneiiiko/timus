'''
http://acm.timus.ru/problem.aspx?space=1&num=1002
'''
associations = {
  '1'=>['i','j'],     '2'=>['a','b','c'], '3'=>['d','e','f'],
  '4'=>['g','h'],     '5'=>['k','l'],     '6'=>['m','n'],
  '7'=>['p','r','s'], '8'=>['t','u','v'], '9'=>['w','x','y'], '0'=>['o','q','z']
}

word_is_true = lambda{|word, pos, str|
  str[pos..-1].each_with_index{|i, digit|
    puts i
  }
}

while(number = gets).chomp! != "-1"
  count=gets.to_i
  words=Array.new(count).map{|word| word=gets.chomp }
  
  # puts words.join(', ')
end
