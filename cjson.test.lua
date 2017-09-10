

local cjson=require("cjson")



table_a={}; --这是一个空的table

table_a["int"] =1;
table_a["string"] = "abc";

json_data = cjson.encode(table_a);--json_data 是一个json格式的字符串

print("json fmt:" .. json_data);


table_b=cjson.decode(json_data);

print("table fmt : ");

print("int = " .. table_b["int"]);
print("string = " .. table_b["string"]);
for i,v in ipairs(table_b) do
    print(i .. "  = " .. v);

end

