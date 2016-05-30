n = gets.chomp.to_i
g = [nil]

all = {}
i = 0
while(v = gets)
	g << v.chomp.split.map(&:to_i)[0..-2]
	i+=1
	all[i] = 0
end

quene = []
while ( !(v=quene.shift).nil? || ( !(v = all.find{|k,v|v.zero?}).nil? && (v=v[0]) && (all[v]=1) ) )
	c = all[v]==1 ? 2 : 1
	g[v].each{|s|
		next unless all[s].zero?
		quene << s
		all[s] = c
	}
end

res =  all.select{|k,v| v==2}.keys
puts res.count
puts res.join("\s")