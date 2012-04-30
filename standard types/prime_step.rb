def prime_nums(n)
	print "2 ";
	i = 2;
	while i<=n
		(2...i).step() do |x|
			if i%x!=0
				if x==i-1
					print i," ";
				end
			else
				break;
			end
		end
		i+=1;
	end
	print "\n";
end

prime_nums(100);
