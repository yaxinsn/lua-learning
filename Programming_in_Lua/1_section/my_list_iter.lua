
function my_list_iter(t)

	local n = table.getn(t);
	local i = 0;
	return function()
		i = i+1;
		if i<=n then
			return t[i];
		else
			return nil;
		end
	     end

end


print("test 1");
n = {"abc","bcd","cde"};
-- for 的范型。
for x in my_list_iter(n) do
	print("x = " .. x);
end

print("test 2");

my_n_iter = my_list_iter(n); --闭包（函数+变量的address）像一个变量一样赋值给my_n_iter
n[4] = "efg" --此时修改了n的长度，但是在my_list_iter的local n已经执行过了，n就不变了，还是3.
for x in my_n_iter do
	print("x ===" .. x);
end

print("test 3");
my_n_iter = my_list_iter(n); --闭包（函数+变量n(address)）像一个变量一样赋值给my_n_iter
n[3] = "test 3"  --。
for x in my_n_iter do
	print("x ===" .. x);
end


--在lua语言中table作为入参时，是table的地址
--int类型的数据则是值传递。
--

function add_2(n)
	n = n+2;
	return n;
end

a = 4;
add_2(a);

print("new a is " .. a);
--[[
--test 4：我们在闭包是修改n,看看旧的n是不是被发生了变化呢？

print("test4");
function add_1(t)
	return function()
		local len = table.getn(t);
		local i = 1;
		while true do
			if i >len then
				break;
			end
			t[i] = t[i]+1;
			i = i+1;
		end
		return t;
	end
end



n1 = {1,2,3}

add_n1 = add_1(n1);

n2 = add_n1();

print("n1-address---" .. n1);
print("n2-address---" .. n2);

for i,v in ipairs(n1) do
	print("n1[" .. i .. "] = " .. v);
end
for i,v in ipairs(n2) do
	print("n2[" .. i .. "] = " .. v);
end
--]]

