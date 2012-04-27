class Vehicle
	def initialize(name,price)
		@name = name;
		@price = price;
	end
	
	def show_contents
		print @name,"\t",@price,"\t",@dealer,"\n";
	end

	def change_price(price)
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
hero.show_contents;
hero.change_price(30000);
hero.show_contents;

