def englishNumber number
  #  We only want numbers from 0-100.
  if number < 0
    return 'Please enter a number zero or greater.'
  end
  if number > 10_000
    return 'Please enter a number 10,000 or lesser.'
  end
  
  numString = ''  #  This is the string we will return.
  
  #  "left" is how much of the number we still have left to write out.
  #  "write" is the part we are writing out right now.
  #  write and left... get it?  :)

  left  = number
  write = left/1000         #  How many thousands left to write out?
  left  = left - write*1000  #  Subtract off those thousands
  

  if write > 0 
    
    thousands = englishNumber write
    numString = "#{thousands}" + " thousand " 
  
  if left == 0
     thousands = englishNumber write
    numString = "#{thousands}" + " thousand " 
 end
end



    write = left/100          #  How many hundreds left to write out?
    left  = left - write*100  #  Subtract off those hundreds.
 
 if write > 0


  if write == 1  

    numString = numString  + "one hundred "  

  elsif   write == 2  

    numString = numString  + "two hundred "  

  elsif   write == 3  

    numString = numString  + "three hundred "  

  elsif   write == 4 

    numString = numString  + "four hundred "  
  elsif   write == 5 

    numString = numString  + "five hundred "
  
  elsif   write == 6

  numString = numString  + "six hundred "
  
  elsif   write == 7 

    numString = numString  + "seven hundred "
  
  elsif   write == 8

    numString = numString  + "eight hundred "

  elsif   write == 9

    numString = numString  + "nine hundred "
end
end

        # numString = numString + "#{hundreds}" + "  hundred" + " "
  write = left/10        #  How many tens left to write out?
  left  = left - write*10  #  Subtract off those tens.
  
  if write > 0
    if write == 1  #  Uh-oh...
      #  Since we can't write "tenty-two" instead of "twelve",
      #  we have to make a special exception for these.
      if    left == 0
        numString = numString + 'ten'
      elsif left == 1
        numString = numString + 'eleven'
      elsif left == 2
        numString = numString + 'twelve'
      elsif left == 3
        numString = numString + 'thirteen'
      elsif left == 4
        numString = numString + 'fourteen'
      elsif left == 5
        numString = numString + 'fifteen'
      elsif left == 6
        numString = numString + 'sixteen'
      elsif left == 7
        numString = numString + 'seventeen'
      elsif left == 8
        numString = numString + 'eighteen'
      elsif left == 9
        numString = numString + 'nineteen'
      end
      #  Since we took care of the digit in the ones place already,
      #  we have nothing left to write.
      left = 0
    elsif write == 2
      numString = numString + 'twenty'
    elsif write == 3
      numString = numString + 'thirty'
    elsif write == 4
      numString = numString + 'forty'
    elsif write == 5
      numString = numString + 'fifty'
    elsif write == 6
      numString = numString + 'sixty'
    elsif write == 7
      numString = numString + 'seventy'
    elsif write == 8
      numString = numString + 'eighty'
    elsif write == 9
      numString = numString + 'ninety'
    end
    
    if left > 0
      numString = numString + '-'
    end
  end
  
  write = left  #  How many ones left to write out?
  left  = 0     #  Subtract off those ones.
  
  if write > 0
    if    write == 1
      numString = numString + 'one'
    elsif write == 2
      numString = numString + 'two'
    elsif write == 3
      numString = numString + 'three'
    elsif write == 4
      numString = numString + 'four'
    elsif write == 5
      numString = numString + 'five'
    elsif write == 6
      numString = numString + 'six'
    elsif write == 7
      numString = numString + 'seven'
    elsif write == 8
      numString = numString + 'eight'
    elsif write == 9
      numString = numString + 'nine'
    end
  end
  
  if numString == ''
    #  The only way "numString" could be empty is if
    #  "number" is 0.
    return 'zero'
  end
  
  #  If we got this far, then we had a number somewhere
  #  in between 0 and 100, so we need to return "numString".
  print "#{numString}" + "  "

end

puts "please enter a number between 0 and 10,000"
choice = gets.chomp

englishNumber choice.to_i