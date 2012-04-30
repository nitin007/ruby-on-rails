class Array
	def array_to_hash
		ath=Hash.new;
		self.each do |x|
			if	!ath[x.to_s.length]
				ath[x.to_s.length]=[];
				ath[x.to_s.length].push(x);
			else
				ath[x.to_s.length].push(x);
			end
		end
		puts ath;
	end
end

["abc","def",1234,234,"abcd","x","mnop",5,"zZzZ"].array_to_hash;
