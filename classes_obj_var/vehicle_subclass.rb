# By convention attr_reader/writer/accessor statements are first statements after opening a class
# Please stop using ';' at the end of a statement, unless you want to write multiple statements in a single line.
# Why have you still used 'print "/n".. we talked about using 'puts'

#changes done
class Vehicle
  attr_accessor :name, :price, :dealer
	
	def initialize(name,price)
		@name = name
		@price = price
	end

end

class Bike < Vehicle
	def initialize(name,price,dealer)
		super(name,price)
		@dealer = dealer
	end
end

hero = Bike.new("suplendor",25000,"Alok Motors")
p "#{hero.name} #{hero.price} #{hero.dealer}"
hero.price = 30000
p "#{hero.name} #{hero.price} #{hero.dealer}"

