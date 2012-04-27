
def replace_vowels(text)
	puts text.gsub(/[aeiou]/,"*");
end

print "Enter some text:";
text = gets.chomp;
replace_vowels(text);
