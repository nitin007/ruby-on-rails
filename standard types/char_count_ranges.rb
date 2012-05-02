def count_chars(str)
	lower = str.count "a-z"
	upper = str.count "A-Z"
	digits = str.count "0-9"
	special_chars = str.scan(/[^a-zA-Z0-9]/).length
	return "No. of lowercase characters: #{lower} No. of uppercase characters: #{upper} No. of digits: #{digits} No. of special characters: #{special_chars}"
end

print "enter some text: "
str = gets.chomp
p count_chars(str)

