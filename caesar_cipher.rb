def ceaeser_cipher(string, shift)
	alphabet = ("a".."z").to_a 
	new_word = []
	string_array = string.scan(/./)

	string_array.each do |letter|

		#will return true alphabet array has a character that matches any of the character in the string
		if alphabet.include? letter
			#This sets the new_letter as the index of the the letter that is at the shift factor to the right of the letter index in the alphabet array
			new_letter = (alphabet.index(letter) + shift) % alphabet.length
			new_word << alphabet[new_letter] # adds the new letter to the new encrypted string
		else
			new_word << letter #for punctuation and spaces etc
		end

	end
	puts new_word.join("") #joins all the new letters together to form the encrypted string

end

puts "Please enter your sentence to encrypt: "
string = gets.chomp.downcase

puts "please enter the shift factor"
shift = gets.chomp.to_i

ceaeser_cipher(string, shift)



