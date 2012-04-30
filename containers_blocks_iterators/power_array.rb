class Array
	def power_array(n)
		pa = [];
		y=1;
		self.each do |x|
			n.times do
				y=y*x;
			end
			pa.push(y);
			y=1;
		end
		return pa;
	end
end
puts [1,2,3,4].power_array(3);
