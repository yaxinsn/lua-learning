co = coroutine.create(
	function (a,b)
    		while true do
			c,d = coroutine.yield(a + b, a - b)
			print("c=",c, " d=",d);
		end
	end
)

print(coroutine.resume(co,2,1));
print(coroutine.resume(co,20,10));
print(coroutine.resume(co,200,100));
print(coroutine.resume(co,2000,1000));
