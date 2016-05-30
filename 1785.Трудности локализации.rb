	while(count=gets) do
		count = count.to_i
		if ((1..4).include?(count))
		  puts 'few'	
		elsif ((5..9).include?(count))
		  puts 'several'
		elsif (10..19).include?(count)
			puts 'pack'
		elsif (20..49).include?(count)
		  puts 'lots'
		elsif (50..99).include?(count)
		  puts 'horde'
		elsif (100..249).include?(count)
		  puts 'throng'
		elsif (250..499).include?(count)
		  puts 'swarm'
		elsif (500..999).include?(count)
		  puts 'zounds'
		else puts 'legion'
		end
	end