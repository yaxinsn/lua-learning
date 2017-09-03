



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



n = {"abc","bcd","cde"};

for x in my_list_iter(n) do
	print("x = " .. x);
end
