function People(name)
	local self = {}
	local function init ()
		self.name = name
	end
	
	self.sayHi = function()
		print('hello ' .. self.name)
	end
	
	init()

	return self
end
local p = People('liming')
p:sayHi()
		
function Main(name)
	local self = People(name)
	local function init()
	end
	init()
		
	self.sayHello = function()
		print('Hi ' .. self.name)
	end
	return self
end

local m = Main('lll')
m:sayHi()
m:sayHello()
