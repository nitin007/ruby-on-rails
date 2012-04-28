class Array
	def hash_inject
		ath=Hash.new;
		h_inject=Hash.new;
		h_inject['odd']=[];
		h_inject['even']=[];
		
		ref = self;
		self.each do |x|
			if	!ath[x.to_s.length]
				ath[x.to_s.length]=[];
				ref.each do |y|
					if(y.to_s.length==x.to_s.length)
						ath[x.to_s.length].push(y);
					end
				end
			end
		end
		
		ath.each_key.inject(0) do |c,(key,val)|
			if key%2
				h_inject['odd'].push(ath[key]);
			else
				h_inject['even'].push(ath[key]);
			end
		end
		puts h_inject;
	end
end

["abc","def",1234,234,"abcd","x","mnop",5,"zZzZ"].hash_inject;

