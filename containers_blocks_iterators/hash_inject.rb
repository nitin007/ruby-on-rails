class Array
	def hash_inject
		ath = {}
		
		self.each do |x|
			len = x.to_s.length
			if	!ath[len]
				ath[len]=[]
				ath[len].push(x)
			else
				ath[len].push(x)
			end
		end
		
		hsh_inj = {}
		hsh_inj['odd']=[]
		hsh_inj['even']=[]
		
		ath.inject(0) do |c,(key,val)|
			if key%2==1
				hsh_inj['odd'].push(ath[key])
			else
				hsh_inj['even'].push(ath[key])
			end
		end
		hsh_inj
	end
end

p ["abc","def",1234,234,"abcd","x","mnop",5,"zZzZ"].hash_inject

