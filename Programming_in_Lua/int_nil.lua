

a = 9
--INT 不能与 nil做大小比较，代码会执行出错。
if a > nil then
	print("a> nil")

else

	print("a !> nil");
end

--但是可以使用== ~=进行比较。
if a == nil then
	print("a ~= nil")
end
