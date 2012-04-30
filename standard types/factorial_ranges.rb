def factorial(n)
	return (1..n).to_a.inject(1) {|p,ele| p*ele};
end

puts factorial(4)
