-------------------------
--7.1 迭代器与闭包
--这种allwords1的方式，则是返回一个闭包。
--allwords1是迭代工厂，返回一个迭代器（闭包）或是迭代生成器。
-------------------------
function allwords1()
	local line = io.read()  -- current line
	local pos = 1 -- current position in the line
	return function ()  -- iterator function
		while line do -- repeat while there are lines
			local s, e = string.find(line, "%w+", pos)
			if s then -- found a word?
				pos = e + 1  -- next position is after this word
				return string.sub(line, s, e) -- return the word
			else
				line = io.read() -- word not found; try next line
				pos = 1  -- restart from first position
			end
		end
		return nil -- no more lines: end of traversal
	end
end

local count = 0
for w in allwords1() do
	if w == "hello" then count = count + 1 end
end
print(count)
--还有一节多状态迭代器，一般不建议使用。
--7.5节，真正的迭代器
------------------------------------------------------------------
--这种方式，则是函数allwords做主循环，f的参数作执行体。
------------------------------------------------------------------

function allwords (f)
	for l in io.lines() do
	-- repeat for each word in the line
		for w in string.gfind(l, "%w+") do
		-- call the function
			f(w)
		end
	end
end
local count = 0
--匿名函数做参数。不是闭包。循环体做好了，把执行体函数当个参数传入。
allwords(function (w)
	if w == "hello" then count = count + 1 end
	end 
	) 
print(count)

