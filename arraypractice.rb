# Assignment 1:
# Let's write a program which asks us to type in as many words as we want 
# (one word per line, continuing until we just press Enter on an empty line), 
# and which then repeats the words back to us in alphabetical order. 
# Hint: There's a lovely array method which will give you a sorted version of an array: 
# sort. Use it!

# puts "Type as many words as you'd like, one on each line. 
# When you are all out of words, press ENTER on an empty line: "

# words_storage = Array.new

# words = gets
	
# 	until words == ""
# 		words = gets.chomp
# 		words_storage.push words
# 		words_storage.each do |word| word.to_s.capitalize! end
# 	end
		
# 	  puts words_storage.sort



puts "Type as many words as you'd like, one on each line. 
When you are all out of words, press ENTER on an empty line: "

words_storage = Array.new

	 words = gets.chomp
	 words_storage.push words

	until words == ""
		words = gets.chomp
		words_storage.push words
	end
		words_storage.pop
		words_storage.each do |word| word.to_s.capitalize! end
 	
		
	puts words_storage.sort
  	