

function list_array(arr)

	print(arr);

	local i = 1;
	local iter = ""
	for iter in pairs(arr) do
		print("a[" .. i .. "]" .. "is " .. iter);
		i = i+1;
	end

end

strs={"aa","bb","cc","dd"}
print(strs);
list_array(strs);
