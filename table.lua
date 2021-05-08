config = {hello='world'}

config.words = 'hello'
config.num = 100
config['name'] = 'zhangsan'

print(config.words)
print(config.num)
print(config['name'])
print(config.hello)


for k,v in pairs(config) do
	print(k, v)
end
