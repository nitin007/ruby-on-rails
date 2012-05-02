# We dont need to sort the string
# Create a blank hash, traverse over string - if intialize key with val if key not found, else increment key value 

## Iterate over string using a String class function
## The existing approach calculates string length, picka a char from string till its lenght - very C style programming!


### Do we need variable i anymore?
### Dont need a return statement

def occurences(text)
  # Join not needed 

  ### We can intitialize a hash like ltrhash = {}
  ### Please use appropriate variable naming
 
 	#changes done
  
	ltrhash = {};

	text.each_char do |c|
		if !ltrhash[c]
			ltrhash[c]=1
		else
			ltrhash[c] += 1
		end
	end
	ltrhash
end

print "Enter some text:"
text = gets.chomp
p occurences(text)
