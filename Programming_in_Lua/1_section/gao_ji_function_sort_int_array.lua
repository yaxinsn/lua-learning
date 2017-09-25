

int_array = {3,5,2,1,6,4}

function sort(a,f)
	local i,val
	local t=a[1]
	local new_sort={};
	local k = 1;
	local p = 1;

	for i in pairs(a) do
		c = a	
		for i,val in ipairs(c) do
			if  f(t,val) then
				t = t
				
			else
				t = val;
				p = i;
			end
		end

	new_sort[k] = t;
	t = 0
	a[p] = 0
	k = k+1;
	end
	return new_sort;
end


New_Sort = sort(int_array,function(a,b) return a>b; end);
print("new sort");
for i,val in ipairs(New_Sort) do
	print(val);
end


