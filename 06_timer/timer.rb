class Timer
  #write your code here
  	def initialize
    	@seconds = 0
  	end

	def seconds
  		@seconds
  	end

  	def seconds=(value)
  		@seconds = value
	end

	def padded(value)
		if value >= 10
			return value.to_s
		else
			return "0" + value.to_s
		end
	end

	def time_string
		@hour = @seconds / 3600
		@minute = (@seconds % 3600) / 60
		@second = (@seconds % 3600) % 60
		#return (@hour >= 10 ? @hour.to_s: ("0" + @hour.to_s)) + ":" + (@minute >= 10 ? @minute.to_s: ("0" + @minute.to_s)) + ":" + (@second >= 10 ? @second.to_s: ("0" + @second.to_s))
		return padded(@hour) + ":" + padded(@minute) + ":" + padded(@second)  
	end


end
