

function list_array(arr)

	print(arr); --这里输出的arr地址=A

	local i = 1;
	local iter = ""
	for iter in pairs(arr) do
		print("a[" .. i .. "]" .. "is " .. iter);
		i = i+1;
	end

end

strs={"aa","bb","cc","dd"}
print(strs);--这里输出的地址也是A。
list_array(strs);
