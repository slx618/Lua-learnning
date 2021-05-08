arr = {1,2,3,7,5,5,6,6,6}

for k, v in pairs(arr) do
	print(k, v)
end


arr = {}

for var=1, 100 do
	table.insert(arr, 1, var)
end

for k, v in pairs(arr) do
	print(k, v)
end

