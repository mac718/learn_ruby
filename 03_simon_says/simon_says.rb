#write your code here
def echo word
	word
end

def shout word
	word.upcase
end

def repeat word, *number
	if number.empty?
		word + " " + word
	else
		(word + " ") * (number[0] - 1) + word		
	end
	
end

def start_of_word word, number
	word[0, number]
end

def first_word phrase
	i = 0
	while phrase[i] != " "
		i += 1
	end
	phrase[0,i]
end

def titleize phrase
	if phrase.include? " "
		words = phrase.split(" ")
		words.each do |word|
			word.capitalize!
		end
		print words.length
		i = 1
		while i < words.length
			if words[i] == "And" || words[i] == "The" || words[i] == "Over"
				words[i].downcase!
			end
			i += 1
		end
		words.join(" ")
	else
		phrase.capitalize
	end
end

