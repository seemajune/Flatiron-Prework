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

def leapyears(startyear, endyear)
	years = Array.new
	startyear.upto endyear = years[]
	years.select { year % 4 == 0 && year % 400 == 0 }
	puts years
end



puts 'Give me a starting year'

startyear = gets.chomp
startyear.to_i

puts 'Give me an end year'
endyear = gets.chomp
endyear.to_i

puts leapyears(startyear, endyear)