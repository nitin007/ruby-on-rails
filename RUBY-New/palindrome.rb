def palindrome
	print "Enter any word:";
	word = gets.chomp;
	if word=='q'||word=='Q'
		return;
	end
	while word.length>0
		if word[0]==word[-1]
			if word.length==1 || word.length==2
				print "yes, It's a palindrome!\n";
				word="";
			else
				word = word[1...-1]		
			end				
		else
			print "Not a palindrome!\n";
			word="";			
		end
	end	
	palindrome;
end
palindrome;
