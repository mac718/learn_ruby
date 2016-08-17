class Book
# write your code here
	attr_accessor :title
	def title
		no_cap = ["the", "a", "an", "and", "or", "in", "for", "with", "to", "by", "of"]
		title_array = @title.split(" ")
		title_array.each do |word| 
			word.capitalize!
			no_cap.each do |small_word|
				if title_array.include? small_word.capitalize
					word.downcase!				
				end
			end
		end
		title_array[0].capitalize!
		@title = title_array.join(" ")
	end
end
