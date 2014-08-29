#Write a Deaf Grandma program. Whatever you say to grandma 
#(whatever you type in), she should respond with 
#HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals). 
#If you shout, she can hear you (or at least she thinks so)
# and yells back, NO, NOT SINCE 1938! To make your program 
#really believable, have grandma shout a different year each time;
# maybe any year at random between 1930 and 1950. 
#(This part is optional, and would be much easier if you
# read the section on Ruby's random number generator 
#at the end of the methods chapter.) 
#You can't stop talking to grandma until you shout BYE.
# Hint: Don't forget about  chomp!  
# 'BYE'with an Enter is not the same as 'BYE' without one!
# Hint 2: Try to think about what parts of your 
# program should happen over and over again. All of those should be in your while loop.

# def random_int(min, max)
#     rand(max - min) + min
# end

# def grandma_can_hear
# 	puts "NO, NOT SINCE  #{random_int(1930,1950)}"
# end

# talk = " "

# 	while  talk.upcase != "BYE"
# 		puts talk
# 		talk = gets.chomp

# 	if talk == talk.upcase
# 		puts grandma_can_hear

# 	elsif talk == talk.downcase
# 		puts "HUH?!  SPEAK UP, SONNY!"
# 	end
# end

# Extend your Deaf Grandma program: What if grandma 
# doesn't want you to leave? When you shout BYE, she could pretend 
# not to hear you. Change your previous program so that you have to 
# shout BYE three times in a row. 
# Make sure to test your program: 
# if you shout BYE three times, but not in a row, 
# 	you should still be talking to grandma.



def random_int(min, max)
    rand(max - min) + min
end

def grandma_can_hear
	puts "NO, NOT SINCE  #{random_int(1930,1950)}"
end


talk = " "


	while talk == talk.upcase && talk != "BYE"
		puts talk
		talk = gets.chomp
		puts grandma_can_hear

	if talk == talk.downcase 
		puts "HUH?!  SPEAK UP, SONNY!"

	elsif talk  == "BYE"
		puts "HUH?!  SPEAK UP, SONNY!"
		talk2 = gets.chomp
		puts talk2
			if talk2 == "BYE"
			puts "HUH?!  SPEAK UP, SONNY!"
			talk3 = gets.chomp
			puts talk3
				if talk3 == "BYE"
				exit
				end
			end
	end
end

