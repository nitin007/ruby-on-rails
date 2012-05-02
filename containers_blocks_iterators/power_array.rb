class Array
	def power_array(n)
		pa = []
		y = 1
		self.each do |x|
			n.times { y = y*x }
			pa.push(y)
			y=1
		end
		pa
	end
end
p [1,2,3,4].power_array(3)
