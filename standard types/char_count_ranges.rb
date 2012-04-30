def count_chars(str)
	lower = str.count "a-z";
	upper = str.count "A-Z";
	digits = str.count "0-9";
	special_chars = str.scan(/[^a-zA-Z0-9]/)
	print "No. of lowercase characters: ",lower,"\n","No. of uppercase characters: ",upper,"\n","No. of digits: ",digits,"\n","No. of special characters: ",special_chars.length,"\n";
end

print "enter some text: ";
str = gets.chomp;
count_chars(str);
