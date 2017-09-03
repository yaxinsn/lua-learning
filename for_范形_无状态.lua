function iter (a, i)
	local i = i + 1
	local v = a[i]
	if v then
		return i, v
	end
	
end

--迭代函数 iter， 状态常量 a 和控制变量初现的原始方法：始值 0
function ipairs (a)
	return iter, a, 0
end





a = {"one", "two", "three"}
for i, v in ipairs(a) do
	print(i, v)
end
