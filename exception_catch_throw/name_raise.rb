class Name
	attr_accessor :firstname, :lastname
	
	def rasie_exception
		begin
			if @firstname.length!=0 && @lastname.length!=0
				if @firstname[0].match(/[A-Z]/)
					"first name : #{@firstname} lastname : #{@lastname}"
				else
					raise "first letter must be capital"
				end
			else
				raise "Firstname or Lastname cannot be empty!"
			end
			
		rescue Exception => e
			e.message
		end
	end
	
end

person = Name.new
person.firstname = "df"
person.lastname = "vkj"
puts person.rasie_exception
