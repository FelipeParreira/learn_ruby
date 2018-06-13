#write your code here
def echo(word)
	return word.to_s
end

def shout(word)
	return (word.to_s).upcase
end

def repeat(word, tim=2)
	return (((word.to_s) + ' ') * (tim - 1)) + (word.to_s)
end

def start_of_word(word, start=1)
	return word[0..(start - 1)]	
end

def first_word(word)
	i = -1
	word.each_char do |x|
		break if x == ' '
		i += 1
	end
	return word[0..i]
end

def titleize(word)
	result = word[0].upcase
	i = 1
	while i < word.length
		if (word[i - 1] == " " && word[i + 4] == " ") 
			result = result + word[i]
		elsif word[i - 1] == " " && word[i + 3] != " "
			result = result + word[i].upcase
		else
			result = result + word[i]
		end
		i = i + 1
	end
	return result
end
