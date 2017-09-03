




print("please input you expression");
local l = io.read();
local func = assert(loadstring("return " .. l));
print("the value of you expression " .. func());
