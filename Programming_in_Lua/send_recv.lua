
--9 协同
function consumer ()
	while true do
		local x = receive() -- receive from producer
		io.write(x, "\n") -- consume new value -- step 6，一个过程在此结束了。
	end
end

function receive ()
	local status, value = coroutine.resume(producer) --step2 调用producer.
	return value -- step5/
end
function send (x)
	coroutine.yield(x) --step 4
end
--producer定义好了。
producer = coroutine.create( function ()
	while true do
		local x = io.read() -- produce new value --step 3
		send(x)
	end
end)


consumer(); //step1
