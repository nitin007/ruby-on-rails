class String
	def to_s
		i=0;
		self.each_char do |c|
			yield c,c.match(/[a-z]/);
		end
	end
end

"hello WORLD".to_s do |c,f|
	if f
		print c.upcase;
	else
		print c.downcase;
	end
end

