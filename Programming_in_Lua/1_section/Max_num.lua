

function Max(a)

local m =a[1]
local pos=1
for i,val in ipairs(a) do
    if m < val then
	m = val
	pos = i

    end
end
	return m, pos;
end

int_arrar={2,3,4,5,1,34,44,4,5,8,60,34,2,32}

print(Max(int_arrar));

max,pos = Max(int_arrar);
print("Max num is " .. max .. ", it's postion is " .. pos);

