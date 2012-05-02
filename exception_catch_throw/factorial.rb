def factorial(n)
	begin
		if n>=0
			(1..n).inject {|p,ele| p*ele} 
		else
			raise
		end
		
	rescue
		"factorial of negative nos can't be found!"
	end
end

puts factorial(-1)
