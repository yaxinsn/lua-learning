

---lua编译一个函数时，其中包含了函数体对应的虚拟机指令、函数用到的常量值(数，文本字符串等等)和一些调试信息。在运行时，每当Lua执行一个形如function...end　这样的函数时，它就会创建一个新的数据对象，其中包含了相应函数原型的引用、环境(用来查找全局变量的表)的引用以及一个由所有upvalue引用组成的数组，而这个数据对象就称为闭包.
--
--
--
--今天测试多级闭包对upvalue的引用。
--


function add_1_add_2(a)
	return	function()
		a=a+1;
		return function()
			print("add and show new value : " .. a);
		end
	end
end


fa = add_1_add_2(4);

show_a=fa();

show_a();
