class Book
# write your code here
	def title
		array = @title.split("")
		if array.include? " "
			array[0] = array[0].capitalize
			i = 1
			while i < array.length
				if (array[i - 1] == " " && array[i + 2] != " " && array[i + 3] != " " && array[i + 1] != " ") || (!(["a", "t", "i", "o"].include? array[i]) && array[i - 1] == " ") || (array[i - 1] == " " && array[i] == "i" && array[i + 1] == " ")
					array[i] = array[i].capitalize
				end
				i = i + 1
			end
			return array.join("")
 	 	else 
 	 		return @title.capitalize
 	 	end
	end

	def title=(value)
  		@title = value
	end
end
