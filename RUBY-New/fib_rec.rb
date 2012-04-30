## Dont need to write return
def fib_rec(n)
	if(n==1||n==2)
		return 1;
	else
		return fib_rec(n-2)+fib_rec(n-1);
	end
end

for i in 1..10
	print fib_rec(i)," ";
end
