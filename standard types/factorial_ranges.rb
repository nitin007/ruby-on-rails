def factorial(n)
	puts (1..n).to_a.inject(1) {|p,ele| p*ele};
end

factorial(4)
