

int_array = {nil,0,2,1,6,4}

function sort(a,f)
	local i,val
	local t;
	local k = 1;
	local p = 1;

--[[	if a == nil then
		return;
	end
--]]
		c = a	
	-- find first no nil value
	for i,val in ipairs(c) do
		if val ~= nil then
			t = val;
	print("first no nil is " .. t);
			break;
		end
	end
--	print("first no nil is " .. t);
		for i,val in ipairs(c) do
			if val == nil then
				t = t
			else
				if  f(t,val) then
					t = t
				
				else
			
				t = val;
				p = i;
				end
			end
		end

	if t == nil then
		return 
	else
		c[p] = nil
		return t,sort(c,f);
	end
end


print(sort(int_array,function(a,b) return a>b; end));


