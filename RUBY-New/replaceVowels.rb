def replace_vowels(text)
	text.gsub(/[aeiou]/,"*")
end

print "Enter some text:"
text = gets.chomp
p replace_vowels(text)
