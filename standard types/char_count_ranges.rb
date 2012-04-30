def count_chars(str)
	lower = str.count "a-z";
	upper = str.count "A-Z";
	digits = str.count "0-9";
	special_chars = str.scan(/[^a-zA-Z0-9]/)
	yield lower, upper, digits, special_chars.length;
end

print "enter some text: ";
str = gets.chomp;
count_chars(str) {|l,u,d,s| 	print "No. of lowercase characters: ",l,"\n","No. of uppercase characters: ",u,"\n","No. of digits: ",d,"\n","No. of special characters: ",s,"\n";
}
