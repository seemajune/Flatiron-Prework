# Make an OrangeTree class. It should have a height method which returns its height, 
# and a oneYearPasses method, which, when called, ages the tree one year. 
# Each year the tree grows taller (however much you think an orange tree should grow in a year), 
# and after some number of years (again, your call) the tree should die. 
# For the first few years, it should not produce fruit, but after a while it should,
#  and I guess that older trees produce more each year than younger trees... 
#  whatever you think makes most sense. And, of course, you 
#  should be able to countTheOranges 
#  (which returns the number of oranges on the tree),
#   and pickAnOrange (which reduces the @orangeCount by one and 
#  returns a string telling you how delicious the orange was, 
#  or else it just tells you that there are no more oranges to pick this year). 
# Make sure that any oranges you don't pick one year fall off before the next year.

class OrangeTree 
	def initialize 
		@height = 0 
		@orangeCount = 0
		@age = 0 
	end

	def water
		puts "You have watered your orange tree plant"
		oneYearPasses
	end

	def countTheOranges
		puts puts "You have a total of  #{@orangeCount} oranges on your tree"
		oneYearPasses
	end

	def pickAnOrange
		if @orangeCount >= 1
		  @orangeCount = @orangeCount - 1
		  puts "You have picked an orange. Your tree has #{@orangeCount} oranges"
		else
			puts "Your tree has yet to produce fruit, please wait a few years 
			before trying to pick oranges!"
		end
	end

	private
	
	def oneYearPasses
		
		if  @age <= 2
			@height = @height + 10
			@orangeCount = 0
			@age = @age + 1

			puts "Your tree is #{@age} years old, has a height of #{@height}
			and has produced #{@orangeCount} oranges to date"

		elsif @age >= 3 && @age < 5
			@height = @height + 10
			@orangeCount = @orangeCount + 1
			@age = @age + 1

			puts "Your tree is #{@age} years old, has a height of #{@height}
			and has produced #{@orangeCount} oranges to date"


		elsif  @age >= 5 && @age < 20
			@height = @height + 30
			@orangeCount = @orangeCount + 2
			@age = @age + 1
			
			puts "Your tree is #{@age} years old, has a height of #{@height}
			and has produced #{@orangeCount} oranges to date"

		elsif  @age >= 20 && @age < 50
			@height = @height + 40
			@orangeCount = @orangeCount + 3
			@age = @age + 1
				puts "Your tree is #{@age} years old, has a height of #{@height}
			and contains a current total of #{@orangeCount} oranges "

		end

		if dead?
			puts "your tree died"
			exit
		end
	end

	def dead?
	  @age >= 50
	end
end


myTree = OrangeTree.new
myTree.water
myTree.pickAnOrange
myTree.countTheOranges 

myTree.water
myTree.pickAnOrange
myTree.countTheOranges
myTree.pickAnOrange
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.pickAnOrange
myTree.pickAnOrange

myTree.pickAnOrange

myTree.pickAnOrange


myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.pickAnOrange
myTree.pickAnOrange

myTree.pickAnOrange

myTree.pickAnOrange

myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.pickAnOrange
myTree.water
myTree.water
myTree.water
myTree.water
myTree.pickAnOrange
myTree.pickAnOrange
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water
myTree.water

myTree.water
myTree.countTheOranges 
# scratch pad:
# initialize with 0 height:
# @height = 0 ? 