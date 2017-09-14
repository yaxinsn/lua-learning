

Window = {}
-- create the prototype with default values

Window.prototype = {x=0, y=0, width=100, height=100, }
Window.mt = {} --mt不是关键字。
function Window.new (o)
	setmetatable(o, Window.mt) --这个函数有魔力 。
	return o
end
Window.mt.__index = function (table, key) --定义了一个__index，这是个关键字，表示一个运算符所对应的处理函数。
	return Window.prototype[key]
end


--以上是Window库的定义。
--以下是使用。
--当 Lua 发现 w 不存在域 width 时，但是有一个 metatable 带有__index 域，Lua 使用
--w（the table）和 width（缺少的值）来调用__index metamethod，metamethod 则通过访问
--原型表（prototype）获取缺少的域的结果
w = Window.new{x=10, y=20}

print(w.width)  


