def substrings(words, dictionary)
	words = words.downcase.gsub(/[^a-z0-9\s]/i, '')
	words_array = words.split(" ")
	substring = Hash.new

	words_array.each do |val|
	
		dictionary.each do |word|
			if val.include?(word)
				if substring.key?(word)
					substring[word] +=1
				else
					substring[word] = 1
				end
			end
		end
	end
	puts substring
end

words = "Howdy Partner, sit down! How's it going?"

dictionary = [ "below", "down", "go", "going", "horn", "how",
				"howdy", "it", "i", "low", "own", "part", "partner",
		    	"sit"]

substrings(words,dictionary)