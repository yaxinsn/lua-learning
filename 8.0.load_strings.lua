
--lua解释性语言，在解释过程中，也是很文本预编译成中间码，再去执行中间码。主要是为了提高效率，
--被编译成中间码的子函数，不需要被编译多次了。中间码执行效率也会提高。
--解释器 ==编译器。
--loadfile,dofile.
--loadstring
--loadfile 只编译一次。而dofile每次都编译。
--


print("please input you expression");
local l = io.read();
local func = assert(loadstring("return " .. l));
print("the value of you expression " .. func());
