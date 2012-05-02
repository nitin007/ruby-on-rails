class Shapes
	def area(shape,*args)
		if shape == "rectangle" and args.size==2
			args.inject(1){|pro,ele| pro*ele}
		
		elsif shape == "circle" and args.size==1
			3.14*args.first*args.first
		
		else
			0.5*args.first*args.last
		end
	end
end

rectangle = Shapes.new
circle = Shapes.new
triangle = Shapes.new

p rectangle.area("rectangle",2,6)
p circle.area("circle",3)
p triangle.area("triangle",5,6)
