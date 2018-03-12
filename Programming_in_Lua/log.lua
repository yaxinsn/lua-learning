

function log(file, ...)

	local _,v;
	local f = io.open(file, "a+")
	   
	local get_data = {}
	for _, v in ipairs((arg)) do
		f:write(v)
		f:write(' ')
	end
	f:write("\n")
	f:close();
end


function my_log(...)
	log("/tmp/cgi.log",os.date(),"|", ...);
end
