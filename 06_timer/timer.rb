class Timer
	
	attr_accessor :seconds
	
	def seconds
		@seconds = 0
	end
	
	def time_string
		padded(@seconds/3600) + ":" + padded((@seconds/60) % 60) + ":" + padded(@seconds % 60)
	end
	
	def padded (number)
		number > 9 ? "#{number}" : "0#{number}"
	end
end
