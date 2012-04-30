def palindrome
	print "Enter any word:";
	word = gets.chomp;
	if word=='q'||word=='Q'
		return;
	end
	while word.length>0
		if word[0]==word[-1]
			if word.length==1 || word.length==2
				word="";
				yield 1;
			else
				word = word[1...-1]		
			end				
		else
			word="";			
			yield false;
		end
	end	
	wrap;
end

def wrap
	palindrome do |f|
		if f
			p "yes, It's a palindrome!";
		else
			p "Not a palindrome!";
		end
	end
end
wrap;
