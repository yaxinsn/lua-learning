a={1,2,3}
function bi_bao_table(x)
	return function() x[1]=x[1]+100; end
end

fa=bi_bao_table(a)
fa()


print (a[1])

b={1,2,3}
fb=bi_bao_table(b)

print("before run fb() , the b[1] = " .. b[1])
b[1]=9
print("before run fb() set b[1]=9 , the b[1] = " .. b[1])
fb();
print("run fb(),      b1 add 100,and b1= " .. b[1])
fb();
print("run fb()again, b1 add 100 ,and b1= " .. b[1])


--comment='''就这个闭包而说，fb的闭包里的参数x指向了b的内存，b修改后，fb使用新的数据再进行计算'''
--print(comment);
