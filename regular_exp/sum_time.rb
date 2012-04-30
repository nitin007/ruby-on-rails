def view(*args)
	puts args
end


def add_time_values(time1,time2)
	if time1.match(/(\d\d):(\d\d):(\d\d)/) && time2.match(/(\d\d):(\d\d):(\d\d)/)
		t2_hr = $1.to_i; t2_min = $2.to_i; t2_sec = $3.to_i
		
		time1.match(/(\d\d):(\d\d):(\d\d)/)
		t1_hr = $1.to_i; t1_min = $2.to_i; t1_sec = $3.to_i
		
		if(t1_hr<24 && t2_hr<24 && t1_min<60 && t2_min<60 && t1_sec<60 && t2_sec<60)
			tt_hr = t1_hr+t2_hr
			tt_min = t1_min+t2_min
			tt_sec = t1_sec+t2_sec
		
			if tt_sec >= 60
				tt_min += tt_sec/60.abs
				tt_sec -= 60
			end
		
			if tt_min >= 60
				tt_hr += tt_min/60.abs
				tt_min -= 60
			end
		
			if tt_hr >= 24
				view("one day & ")
				tt_hr -= 24
			end
		
			view("#{tt_hr}:#{tt_min}:#{tt_sec}")
		else
			view("values not valid!")
		end
	else
		view("values not valid!")
	end
end

add_time_values("23:59:59","23:59:59")


