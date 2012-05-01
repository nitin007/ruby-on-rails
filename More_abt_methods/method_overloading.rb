class Shapes
	def area(shape,*args)
		if shape == "rectangle" and args.size==2
			return args.inject(1){|pro,ele| pro*ele}
		end
		
		if shape == "circle" and args.size==1
			return 3.14*args.first*args.first
		end
		
		if shape == "triangle" and args.size==2
			0.5*args.first*args.last
		end
	end
end

rectangle = Shapes.new
circle = Shapes.new
triangle = Shapes.new

puts rectangle.area("rectangle",2,6)
puts circle.area("circle",3)
puts triangle.area("triangle",5,6)
