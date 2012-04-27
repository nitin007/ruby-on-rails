class Vehicle
	def initialize(name,price)
		@name = name;
		@price = price;
	end
	
	attr_reader :name, :price, :dealer;

	def change_price=(price)
		@price = price
	end
end

class Bike < Vehicle
	def initialize(name,price,dealer)
		super(name,price);
		@dealer = dealer
	end
end

hero = Bike.new("suplendor",25000,"Alok Motors");
print hero.name,"\t",hero.price,"\t",hero.dealer,"\n";
hero.change_price = 30000;
print hero.name,"\t",hero.price,"\t",hero.dealer,"\n";

