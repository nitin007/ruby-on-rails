def prime_nums(n)
	print "2 ";
	i = 2;
	while i<=n
		(2...i).step() do |x|
			if i%x!=0
				if x==i-1
					yield i;
				end
			else
				break;
			end
		end
		i+=1;
	end
end

puts prime_nums(100){|i| print i," ";}
