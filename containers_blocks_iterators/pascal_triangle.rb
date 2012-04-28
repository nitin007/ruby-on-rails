def pascal(n)
	a=[];

	for i in 0..n
		num=1;
		
		(i-1).times do
			num=num*11;
		end
		
		if i==0
			puts "1";
		else

			print "1 ";
			if i>1
				while num>0
					a.push(num%10);
					num=num/10.abs;
				end
				
				for k in 0...a.length-1
					print a[k]+a[k+1]," ";
				end
			end
			print "1\n";
			a.shift(a.length);
		end
	end
end

pascal(5);
