#why don't you write a cheat method which does just that! 
#Come back when you're done (and when you tested that it worked, of course). 
#Make sure that someone can't set the die to have a  7 showing!

# class Die

#   def initialize
#     # I'll just roll the die, though we
#     # could do something else if we wanted
#     # to, like setting the die with 6 showing.
#     roll
#   end

#   def roll
#     @numberShowing = 1 + rand(6)
#   end

#   def showing
#     @numberShowing
#   end

# end

# puts Die.new.showing

class Die

  def initialize
    @numberShowing = 0
  end

  def roll
   @numberShowing = 1 + rand(6)
  end

  def cheat(cheatNumber)
      @numberShowing = cheatNumber
  end

  def showing
   @numberShowing
  end

end

cheatNumber = 0
  until cheatNumber >= 1 && cheatNumber <= 6
    puts "enter a cheat number between 1 and 6"
    cheatNumber = gets.chomp.to_i
  end

cheatdi = Die.new
cheatdi.cheat(cheatNumber)
puts cheatdi.showing

nocheatdi = Die.new
nocheatdi.roll
puts nocheatdi.showing