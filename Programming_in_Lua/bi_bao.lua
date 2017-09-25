

---lua编译一个函数时，其中包含了函数体对应的虚拟机指令、函数用到的常量值(数，文本字符串等等)和一些调试信息。在运行时，每当Lua执行一个形如function...end　这样的函数时，它就会创建一个新的数据对象，其中包含了相应函数原型的引用、环境(用来查找全局变量的表)的引用以及一个由所有upvalue引用组成的数组，而这个数据对象就称为闭包.
--
--
--
--今天测试多个闭包对upvalue的引用。
--


function add_1_add_2(a)
	local funct_tab = {}
	funct_tab[1] =function()
		a=a+1;
	end
	funct_tab[2] = function()
		a=a+2;
	end

	funct_tab[3] = function()
		print("a =" .. a);
	end
	return funct_tab;
end


fa = add_1_add_2(4);

print("I think a = 4");
fa[3]();


print("run funct_tab[1] a+1");
fa[1]();
fa[3]();

print("run funct_tab[1] a+2");
fa[2]();
fa[3]();
