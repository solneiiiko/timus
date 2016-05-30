gets
g = {}
all = {}
while(command=gets)
	command = command.chomp.split
	command.each{|name|
		g[name] = {} unless g.key?(name)
		command.select{|e| e!=name}.each{|name1|
			g[name][name1]=name1
		}
		all[name]=name
	}
end

beg = 'Isenbaev'
res0 = []

if g.key?(beg)
	res = {beg=>0}
	stak = [beg]
	all.delete(beg)

	while (stak.count>0)
		name = stak.shift
		g[name].keys.each{|key|
			unless res.key?(key)
				stak.push(key)
				res[key] = res[name]+1
				all.delete(key)
			end
		}
	end
	res.each{|k, v|	res0<<[k,v]}
end
all.each{|k, v|	res0<<[k,'undefined']}

res0.sort{|a,b| a[0]<=>b[0]}.each{|e| puts e.join(' ')}
