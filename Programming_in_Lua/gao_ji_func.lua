


function print_max(a,b,f)

	local l = f(a,b)
	if l == true then
		print("Max is a" .. a);
	else

		print("Max is b" .. b);
	end

end


print_max(4,5,function(a,b) return a>b end)
