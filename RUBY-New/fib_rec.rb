## Dont need to write return

#changes done
def fib_rec(n)
	if(n==1||n==2)
		1
	else
		fib_rec(n-2)+fib_rec(n-1)
	end
end

for i in 1..10
	p fib_rec(i)
end
