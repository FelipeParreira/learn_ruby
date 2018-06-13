#write your code here
def translate(word)
	i = 0
	result = ""
	if word.split("").include? " "
		array = word.split(" ")
		result2 = ""
		j = 0
		while j < array.length
			result2 = result2 + translate(array[j]) + 
			(i == array.length - 1 ? "" : " ")
			j = j + 1
		end
		if result2[result2.length - 1] == " "
			result2 = result2[0..result2.length - 2]
		end
		return result2
	end
	while i < word.length 
		if ["a", "e", "i", "o", "u"].include? word[i] and i == 0
			return word + "ay"
		elsif ["a", "e", "i", "o", "u"].include? word[i]
			break
		elsif word[i..(i + 1)] == "qu"
			result = result + word[i..(i + 1)]
			i = i + 1
		else
			result = result + word[i]
		end
		i = i + 1
	end
	result = word[i..(word.length - 1)] + result
	return result + "ay"
end



	
