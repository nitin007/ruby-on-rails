def see_if_pal(word)
	while 1
		if word[0]==word[-1]
			word = word[1...-1]		
			if word.length==1
				break(print "yes, It's a palindrome!");
			end
		else
			break(print "Not a palindrome!");
		end
	end	
end

print "Enter any word:";
word = gets.chomp;
puts see_if_pal(word);
