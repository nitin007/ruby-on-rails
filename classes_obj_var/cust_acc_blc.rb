class Customer
	@@acc_no=0;
	def initialize(name,balance)
		@name = name;
		@balance = balance;
		@acc_no = @@acc_no+=1;
	end
	
	def deposit(amt)
		@balance += amt;
	end
	
	def withdrawal(amt)
		@balance -= amt;
	end
	
	def detail
		print @balance,"\t",@name,"\t",@acc_no;
	end
end

customer1 = Customer.new('matz',1000)
customer1.deposit(1000)
puts customer1.detail;

customer2 = Customer.new('john',1000)
customer2.deposit(100)
puts customer2.detail;
