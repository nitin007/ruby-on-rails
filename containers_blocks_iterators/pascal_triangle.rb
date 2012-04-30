def pascal(n)
	a=[];
	b=[];
	a.push(1,1);
	b.push(1);
		
	for i in 0..n
		if i<=1;
			if i==0
				puts a.first;
			else		
				print a.first," ",a.last,"\n";
			end

		else
			print a.first," ";
			for j in 0...a.length-1
				print a[j]+a[j+1]," ";
				b[j+1] = a[j]+a[j+1];
			end		
			puts a.last;
			b[b.length] = 1;
			a=b.dup;
		end
	end
end

pascal(6);
