class String
	def to_s
		i=0;
		while i<self.length
			if self[i].match(/[a-z]/)
				print self[i].upcase;
				i+=1;
			else
				print self[i].downcase;
				i+=1;
			end
		end
		print "\n";
	end
end

"hello WORLD".to_s;
