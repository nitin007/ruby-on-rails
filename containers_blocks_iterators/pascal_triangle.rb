def pascal(n)
	currentarr = [1,1]
	nextarr = [1]
		
	for i in 0..n
		if i == 0
			yield currentarr.first,"\n"
		elsif i == 1
			yield currentarr.first," ",currentarr.last,"\n"
		else
			yield currentarr.first," "
			for j in 0...currentarr.length-1
				yield currentarr[j]+currentarr[j+1]," "
				nextarr[j+1] = currentarr[j]+currentarr[j+1]
			end		
			yield currentarr.last,"\n"
			nextarr[nextarr.length] = 1
			currentarr = nextarr.dup
		end
	end
end

pascal(6) do |*args|
	args.each {|arg| print arg}
end
