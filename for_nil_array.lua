

-- 只能打印出1，2，3，这说明table遇到nil就结束了。
arrX={1,2,3,nil,4,5}
for i,val in ipairs(arrX) do
	print(val);
end
