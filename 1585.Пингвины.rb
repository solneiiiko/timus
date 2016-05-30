gets
res = {'E'=>0, 'M'=>0, 'L'=>0}
name = {'E'=>'Emperor Penguin', 'M'=>'Macaroni Penguin', 'L'=>'Little Penguin'}
while (penguins=gets)
	res[penguins[0]]+=1
end
puts name[res.sort{|a, b| a[1]<=>b[1]}[2][0]]
