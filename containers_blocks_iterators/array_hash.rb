class Array
	def array_to_hash
		ath={}
		self.each do |x|
			len = x.to_s.length
			if	!ath[len]
				ath[len]=[]
				ath[len].push(x)
			else
				ath[len].push(x)
			end
		end
		ath
	end
end

p	["abc","def",1234,234,"abcd","x","mnop",5,"zZzZ"].array_to_hash
