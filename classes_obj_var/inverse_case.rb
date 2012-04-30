# Again you haven't read the API carefully..
class String
	def to_s
		i=0;
		self.each_char do |c|
			if c.match(/[a-z]/)
				yield c.upcase;
			else
				yield c.downcase;
			end
		end
	end
end

"hello WORLD".to_s {|c| print c;}

