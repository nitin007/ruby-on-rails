class Array
	def hash_inject
		ath=Hash.new;
		
		self.each do |	x|
			if	!ath[x.to_s.length]
				ath[x.to_s.length]=[];
				ath[x.to_s.length].push(x);
			else
				ath[x.to_s.length].push(x);
			end
		end
		
		hsh_inj=Hash.new;
		hsh_inj['odd']=[];
		hsh_inj['even']=[];
		
		ath.inject(0) do |c,(key,val)|
			if key%2==1
				hsh_inj['odd'].push(ath[key]);
			else
				hsh_inj['even'].push(ath[key]);
			end
		end
		return hsh_inj;
	end
end

puts ["abc","def",1234,234,"abcd","x","mnop",5,"zZzZ"].hash_inject;

