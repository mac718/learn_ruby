#write your code here
def translate phrase
	vowels = "aeiou"
	if phrase.include? " "
		phrase = phrase.split(" ")
		
		word_start = []
		phrase.each do |word|
			word_start << word[0..2]
		end
		i = 0
		word_start.each do |subs|
			if vowels.include? subs[0]
				phrase[i] = phrase[i] + "ay"
			elsif subs[0..1] == "qu"
				phrase[i] = phrase[i][2..-1] + subs[0..1] + "ay"
			elsif !vowels.include? subs[0] and subs[1..2] == "qu"
					phrase[i] = phrase[i][3..-1] + subs[0..2] + "ay"
			elsif !vowels.include? subs[0] and !vowels.include? subs[1] and !vowels.include? subs[2]
				phrase[i] = phrase[i][3..-1] + subs + "ay"
			elsif !vowels.include? subs[0] and !vowels.include? subs[1] and vowels.include? subs[2]
				phrase[i] = phrase[i][2..-1] + subs[0..1] + "ay"
			else
				phrase[i] = phrase[i][1..-1] + subs[0] + "ay"
			end
			i+=1
		end
		phrase = phrase.join(" ")
	else
			if vowels.include? phrase[0]
				phrase = phrase + "ay"
			elsif phrase[0..1] == "qu"
				phrase = phrase[2..-1] + phrase[0..1] + "ay"
			elsif !vowels.include? phrase[0] and phrase[1..2] == "qu"
					phrase = phrase[3..-1] + phrase[0..2] + "ay"
			elsif !vowels.include? phrase[0] and !vowels.include? phrase[1] and !vowels.include? phrase[2]
				phrase = phrase[3..-1] + phrase[0..2] + "ay"
			elsif !vowels.include? phrase[0] and !vowels.include? phrase[1] and vowels.include? phrase[2]
				phrase = phrase[2..-1] + phrase[0..1] + "ay"	
			else
				phrase = phrase[1..-1] + phrase[0] + "ay"
			end
		end
end