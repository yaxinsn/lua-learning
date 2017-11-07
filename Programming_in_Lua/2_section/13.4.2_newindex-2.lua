


Window = {}
Window.prototype = {x=0, y=0, width=100, height=100, }
Window.mt = {}

function Window.new (o)
	setmetatable(o, Window.mt)
	return o
end

Window.mt.__index = function (table, key)
	return Window.prototype[key]
end
--[
Window.mt.__newindex = function (table, key)
	       print("table no is key " .. key .. " can't write it!");
	end     
--]
Window.mt.__newindex = Window.prototype;
----------------------------

w1=Window.new({})


print("w1.width  " .. w1.width);

w1.xx=9;


w2=Window.new({})


print("w2.width  " .. w2.width);
print("w2.xx  " .. w2.xx);
