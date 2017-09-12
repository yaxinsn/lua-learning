

package.cpath='./lib/?.so'

local cjson=require("cjson");

tableX={};
tableX = debug.getinfo(1);

print("type:" .. type(tableX));

print("debug.getinfo[source] " .. tableX["source"]);
print("debug.getinfo.source  " .. tableX.source);

print("------------------");
for k,v in pairs(tableX) do
	if type(v) == "function" then
		print(k .. "=" .. "is function");
	else
	print(k .. "=" .. v);
	end
end
print("------------------");


source = debug.getinfo(1,"S").source;
print("Source " .. source);
short_src = debug.getinfo(1,"S").short_src;

print("short_src " .. short_src);
