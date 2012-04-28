class Array
	def array_to_hash
		ath=Hash.new;
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
		puts ath;
	end
end

["abc","def",1234,234,"abcd","x","mnop",5,"zZzZ"].array_to_hash;
