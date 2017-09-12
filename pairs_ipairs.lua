


tab={1,2,3,4};
tab["name"] = "tab";

for k,v in ipairs(tab) do
	print(k .. "=" .. v);
end
print("the next is pairs");
for k,v in pairs(tab) do
	print(k .. "=" .. v);
end
