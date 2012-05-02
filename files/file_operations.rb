def convert_file_format
	
	if !File.exists? "dev_desg_f1.csv"
		file1 = File.new("dev_desg_f1.csv","w+")
		file1.puts("Name\tEmpid\tfdmb")
		file1.puts("John\t12\tDeveloper")
		file1.puts("Mary\t13\tDesigner")
		file1.puts("Jack\t15\tDeveloper")
		file1.puts("Jane\t17\tDesigner")
		file1.close		
	else
		file1 = File.open("dev_desg_f1.csv","r")
	end
		
		
	if !File.exists? "dev_desg_f2.csv"
		file2 = File.new("dev_desg_f2.csv","w+")	
		file2.puts "Developers", "Designers"
	else
	 file2 = File.open("dev_desg_f2.csv","r+")
	end
	
	
	arr = IO.readlines("dev_desg_f1.csv")
	arr.each do |line|
		word = line.split(" ")
		if word.last == "Developer"
			file2.rewind
			line1 = file2.readline
			line1 = file2.readline while (!line1.downcase.match(/^developer/))
			
			data = "#{word[0]} (Empid: #{word[1]})"
			pos = file2.pos
			rest = file2.read
			file2.seek pos
			file2.puts data, rest
		elsif word.last == "Designer"
			file2.rewind
			line1 = file2.readline
			line1 = file2.readline while (!line1.downcase.match(/^designer/))

			data = "#{word[0]} (Empid: #{word[1]})"
			pos = file2.pos
			rest = file2.read
			file2.seek pos
			file2.puts data, rest
		end
	end
	
	file1.close
	file2.close
end

convert_file_format
