# default value for balance should be 1000. You should not have to specify it.

#changes done
class Customer
	attr_reader :name, :balance, :acc_no;
	@@acc_no=0

	def initialize(name)
		@name = name
		@balance = 1000
		@acc_no = @@acc_no+=1
	end
	
	def deposit=(amt)
		@balance += amt
	end
	
	def withdrawal=(amt)
		@balance -= amt
	end
end

customer1 = Customer.new('matz')
customer1.deposit = 1000
p "#{customer1.acc_no} #{customer1.name} #{customer1.balance}"
customer1.withdrawal = 1000
p "#{customer1.acc_no} #{customer1.name} #{customer1.balance}"

customer2 = Customer.new('john')
customer2.deposit = 100
p "#{customer2.acc_no} #{customer2.name} #{customer2.balance}"
customer2.withdrawal = 1000
p "#{customer2.acc_no} #{customer2.name} #{customer2.balance}"

