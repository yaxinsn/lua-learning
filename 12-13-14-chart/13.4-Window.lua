--学习__index.和__newindex
--__index是以后类继承用的。
--前面说过，当我们访问一个表的不存在的域，返回结果为 nil，这是正确的，但并不
--一致正确。实际上，这种访问触发 lua 解释器去查找__index metamethod：如果不存在，
--返回结果为 nil；如果存在则由__index metamethod 返回结果

Window = {}
-- create the prototype with default values

Window.prototype = {x=0, y=0, width=100, height=100, }
Window.mt = {} --mt不是关键字。
function Window.new (o)
	setmetatable(o, Window.mt) --这个函数有魔力 。
	return o
end
--__index方式之一：可以是配置成一个函数。
Window.mt.__index = function (table, key) --定义了一个__index，这是个关键字，表示一个运算符所对应的处理函数。
	--return Window.prototype[key]
	return "no this key <" .. key .. "> bye"
end
--__index方式之二： 也可是一个表。
Window.mt.__index = Window.prototype;


Window.mt.__newindex = function(table, key,v)
	print("can't set this key <" .. key .. "> bye");
end

Window.mt.__newindex = Window.prototype;



--以上是Window库的定义。
--以下是使用。
--当 Lua 发现 w 不存在域 width 时，但是有一个 metatable 带有__index 域，Lua 使用
--w（the table）和 width（缺少的值）来调用__index metamethod，metamethod 则通过访问
--原型表（prototype）获取缺少的域的结果
w = Window.new{x=10, y=20}

print(w.width)  

w.yyyy=9;
print(w.yyyy)  
