# Instructions: Leap Years. Write a program which will ask 
# for a starting year and an ending year, and 
# then puts all of the leap years between them 
# (and including them, if they are also leap years).
# Leap years are years divisible by four (like 1984 and 2004). 
# However, years divisible by 100 are not leap years 
# (such as 1800 and 1900) unless they are divisible by 400
# (like 1600 and 2000, which were in fact leap years). 
# (Yes, it's all pretty confusing, but not as confusing 
# has having July in the middle of the winter,
# which is what would eventually happen.)



puts 'Give me a starting year'
a = gets.chomp.to_i


puts 'Give me an end year'
b = gets.chomp.to_i

c = (b-a)


for i in 0..c
	d = a+i
	if ((d%4 == 0) && (d%100 != 0)) || (d%400 == 0) 
		puts d
	end
end
