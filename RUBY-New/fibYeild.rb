def fib_series(max)
	i1, i2 = 1, 1				# parallel assignment (i1 = 1 and i2 = 1)
	while i1 <= max
		yield i1
		i1, i2 = i2, i1+i2
	end
	puts "";
end

fib_series(1000) {|f| print f, " " }

# Use puts instead of print, remove "/n" from the logic
# Please submit a recursive version as well.
