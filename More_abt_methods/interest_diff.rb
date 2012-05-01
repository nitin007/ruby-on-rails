class Interest
	attr_accessor :principle, :time	
	
	def compund_minus_simple_interest
		temp = 1
		@time.times {temp = temp*1.1}

		ci_amt = @principle*temp
		si_amt = @principle+(@principle*@time*0.1)
		
		ci_amt-si_amt
	end
end

interest_calc	 = Interest.new

print "Enter Principle : "
interest_calc.principle = gets.chomp.to_i
print "Enter time : "
interest_calc.time = gets.chomp.to_i
puts interest_calc.compund_minus_simple_interest
