def factorial(n)
	(1..n).inject(1) {|p,ele| p*ele};
end

puts factorial(4)
