def view(str)
	p str
end


def resulting_time(hrs,mins,secs)
	r_d = 0	
	
	total_hrs = hrs.inject(0) {|sum,ele| sum+ele}
	total_mins = mins.inject(0) {|sum,ele| sum+ele}
	total_secs = secs.inject(0) {|sum,ele| sum+ele}
	
	r_s = total_secs%60
	total_mins += total_secs/60.abs
	
	r_m = total_mins%60
	total_hrs += total_mins/60.abs
	
	r_h = total_hrs%24
	r_d +=  total_hrs/24.abs
	if r_d != 0
		view "#{r_d} day & #{r_h}:#{r_m}:#{r_s}"
	else
		view "#{r_h}:#{r_m}:#{r_s}"
	end
end


def add_times(*args)
	hrs = []
	mins = []
	secs = []
	
	args.each do |time|
		if time.match(/^(\d{1,2})?:(\d{1,2})?:(\d{1,2})$/)
			if $1.to_i >= 24 || $2.to_i >= 60 || $3.to_i >= 60
				view "values out of range!"
				exit
			else
				hrs.push($1.to_i)
				mins.push($2.to_i)
				secs.push($3.to_i)
			end
		else
			view "Values not valid!"
			exit
		end
	end
	resulting_time(hrs,mins,secs)
end

add_times("11:23:07","22:53:45")

