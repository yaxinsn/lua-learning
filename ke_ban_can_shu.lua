

function my_print(...)

	local i = arg.n
	print("tatal param num is " .. i);

	for i,val in ipairs(arg) do
		print("No" .. i .. " param is " .. val);
	end
end

my_print("aa","cc",2,3);
