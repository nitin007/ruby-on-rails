def pascal(n)
	a=[];
	b=[];
	a.push(1,1);
	b.push(1);
		
	for i in 0..n
		if i<=1;
			yield i,a;
		else
			yield i,a.first
			for j in 0...a.length-1
				yield i,a[j]+a[j+1];
				b[j+1] = a[j]+a[j+1];
			end		
			yield false,a.last;
			b[b.length] = 1;
			a=b.dup;
		end
	end
end

pascal(6) do |i,val|
	if i==0
		puts val.first;
	elsif i==1
		print val.first," ",val.last,"\n";
	else
		if i
			print val," ";
		else
		 puts val;
		end
	end
end
