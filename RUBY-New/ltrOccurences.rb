def occurences(text)
	sorted_text = text.chars.sort.join;
	count=1;
	i=0;
	ltrhash = Hash.new;
	while i<text.length
		if sorted_text[i] == sorted_text[i+1]
			count+=1;
			i+=1;
		else
			ltrhash[sorted_text[i]] = count;
			i+=1;
			count = 1;
		end
	end
	puts ltrhash;
end

print "Enter some text:";
text = gets.chomp;
occurences(text);
