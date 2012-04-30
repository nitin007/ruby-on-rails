class Customer
	@@acc_no=0;

	def initialize(name,balance)
		@name = name;
		@balance = balance;
		@acc_no = @@acc_no+=1;
	end
	
	attr_reader :name, :balance, :acc_no;
	
	def deposit=(amt)
		@balance += amt;
	end
	
	def withdrawal=(amt)
		@balance -= amt;
	end
end

customer1 = Customer.new('matz',1000)
customer1.deposit = 1000
print customer1.acc_no,"\t",customer1.name,"\t",customer1.balance,"\n",;
customer1.withdrawal = 1000;
print customer1.acc_no, "\t",customer1.name, "\t",customer1.balance,"\n";

customer2 = Customer.new('john',1000)
customer2.deposit = 100;
print customer2.acc_no, "\t",customer2.name, "\t",customer2.balance,"\n",;
customer2.withdrawal = 1000;
print customer2.acc_no, "\t",customer2.name, "\t",customer2.balance,"\n",;
