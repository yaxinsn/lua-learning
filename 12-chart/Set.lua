Set = {}
function Set.new (t)
	local set = {}
	for _, l in ipairs(t) do set[l] = true end
	return set
end


function Set.union (a,b)
	local res = Set.new{}
	for k in pairs(a) do res[k] = true end
	for k in pairs(b) do res[k] = true end
	return res
end

function Set.intersection (a,b)
	local res = Set.new{}
	for k in pairs(a) do
		res[k] = b[k]
	end
	return res
end

function Set.tostring (set)
	local s = "{"
	local sep = ""
	for e in pairs(set) do
		s = s .. sep .. e
		sep = ", "
	end
	return s .. "}"
end
function Set.print (s)
	print(Set.tostring(s))
end


a=Set.new{"abc","bcd","dce"};
b=Set.new{"qaz","bcd","dce"};


Set.print(a);
Set.print(b);
c=Set.union(a,b);

c=Set.union(a,b);
Set.print(c);
d=Set.intersection(a,b);
Set.print(d);
