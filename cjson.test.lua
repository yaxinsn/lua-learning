
--package.path = '/usr/local/share/lua/5.1/?.lua;/home/resty/?.lua;./lib/?.lua;'
--package.cpath = '/usr/local/lib/lua/5.1/?.so;./lib/?.so;' 


function dirname(str)  
    if str:match(".-/.-") then  
        local name = string.gsub(str, "(.*/)(.+)", "%1")  
        return name  
   elseif str:match(".-\\.-") then  
        local name = string.gsub(str, "(.*\\)(.+)", "%1")  
        return name  
    else  
       return ''  
    end  
end

local __FILE__ = debug.getinfo(1,'S').source:sub(2)  


print("fff " .. __FILE__ .. "  dir :" .. dirname(__FILE__) .. "\n");



--PWD=os.getenv("PWD");
--dofile(dirname(__FILE__) .. "/lib/lib_path.lua");
DIR=dirname(__FILE__);
package.path = '/usr/local/share/lua/5.1/?.lua;' .. DIR .. '/lib/?.lua;'
package.cpath = '/usr/local/lib/lua/5.1/?.so;' .. DIR .. '/lib/?.so;'  
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
