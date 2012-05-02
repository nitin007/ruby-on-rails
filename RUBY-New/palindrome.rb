def palindrome
	print "Enter any word:"
	word = gets.chomp
	if word=='q'||word=='Q'
    # use exit. 'return' will return back to where the function was called from. Doesn't exit the program. Please also read up the difference between
    # exit and abort
		exit
	end
	while word.length>0
		if word[0]==word[-1]
			if word.length==1 || word.length==2
				word="";
 				yield "yes, It's a palindrome!"
			else
				word = word[1...-1]		
			end				
		else
			word=""
			#since we want to execute untill user enters q/Q return will abort the program
			yield "Not a palindrome!"
			# Why are we using yield ??????????? I think you just want to return
		end
	end	
	wrap
end

def wrap
	palindrome{|msg| p msg}
end
wrap
