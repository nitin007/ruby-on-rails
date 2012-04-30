# We dont need to sort the string
# Create a blank hash, traverse over string - if intialize key with val if key not found, else increment key value 

## Iterate over string using a String class function
## The existing approach calculates string length, picka a char from string till its lenght - very C style programming!

def occurences(text)
  # Join not needed 
	i=0;

	ltrhash = Hash.new;

	while i < text.length
		if !ltrhash[text[i]]
			ltrhash[text[i]]=1;
		else
			ltrhash[text[i]] += 1;
		end
		i+=1
	end
	puts ltrhash;
end

print "Enter some text:";
text = gets.chomp;
occurences(text);
