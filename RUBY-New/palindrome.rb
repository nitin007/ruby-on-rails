def palindrome
	print "Enter any word:";
	word = gets.chomp;
	if word=='q'||word=='Q'
    # use exit. 'return' will return back to where the function was called from. Doesn't exit the program. Please also read up the difference between
    # exit and abort
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
			# Why are we using yield ??????????? I think you just want to return
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
