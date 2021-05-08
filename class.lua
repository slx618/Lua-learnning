function clone(cls)
	local ins = {}
	for k, v in pairs(cls) do
		ins[k] = v
	end
	return ins
end

function copy(dist, cls) 
	for k,v in pairs(cls) do
		dist[k] = v
	end
end

People = {}
-- function People.sayHi ()
--	print('people say hi')
-- end
People.new = function(name) 
	local self = clone(People)
	self.name = name
	return self
end

People.sayHi = function(self) 
	print('people say hi ' .. self.name)
end

-- local myP = clone(People)
-- myP.sayHi()


-- local p = People.new('gouzi')
-- p.sayHi(p)
-- p:sayHi()


Man = {}
Man.who = function(self)
	print('my name is ' .. self.name)
end
Man.sayHi = function(self)
	print('man say hi ' .. self.name)
end
Man.new = function(name)
	local self = People.new(name)
	copy(self, Man)
	return self
end


local m = Man.new('xiao')

m:who()
m:sayHi()
