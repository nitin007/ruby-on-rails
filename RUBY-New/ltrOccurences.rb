# We dont need to sort the string
# Create a blank hash, traverse over string - if intialize key with val if key not found, else increment key value 

## Iterate over string using a String class function
## The existing approach calculates string length, picka a char from string till its lenght - very C style programming!

def occurences(text)
  # Join not needed 
	i=0;

	ltrhash = Hash.new;

	text.each_char do |c|
		if !ltrhash[c]
			ltrhash[c]=1;
		else
			ltrhash[c] += 1;
		end
		i+=1
	end
	return ltrhash;
end

print "Enter some text:";
text = gets.chomp;
puts occurences(text)
