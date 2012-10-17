def combine_anagrams(words)
	if words.length == 0
	puts "empty"
	return []
	end

	output_array = []
	
	words.each do |w1|
		temp_array = []
		words.each do |w2|
			if w1.downcase.split('').sort == w2.downcase.split('').sort
				temp_array.push(w2)				
			end
		end
		output_array.push(temp_array)
	end
	return output_array.uniq
end

p combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']  )