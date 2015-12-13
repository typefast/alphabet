#take the str string parameter being passed and return the string with the letters in alphabetical order (ie. hello becomes ehllo). Assume numbers and punctuation symbols will not be included in the string.

def alphabet(str)
	letters = str.split("")

	letters.length.times do |letter|
		current_letter = letter

		letter.upto(str.length-1) do |i|

			if letters[i] < letters[current_letter]
				current_letter = i
			end
			
		end
		letters[letter], letters[current_letter] = letters[current_letter], letters[letter]
	end
	letters.join('')
end

puts alphabet('hello')