def englishNumber number
  #  We only want numbers from 0-100.
  if number < 0
    return 'Please enter a number zero or greater.'
  end
  if number > 10_000
    return 'Please enter a number 10,000 or lesser.'
  end
  
  numString = ''  

  onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

  tensPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  teens = ["eleven", "twelve", "thirteen", "fourtneen", "fifteen", "sixteen", "seventeen", "eighteen", 
    "nineteen"]

  hundredsPlace = ["one hundred", "two hundred", "three hundred", "four hundred", "five hundred", 
    "six hundred", "seven hundred", "eight hundred", "nine hundred"]

  
  left  = number
  write = left/1000         #  How many thousands left to write out?
  left  = left - write*1000  #  Subtract off those thousands
  

  if write > 0 
    
    thousands = englishNumber write
    numString = "#{thousands}" + " thousand " 
  
  if left > 0
    numString = numString + " "
 end
end

    write = left/100          #  How many hundreds left to write out?
    left  = left - write*100  #  Subtract off those hundreds.
 
if write > 0

  hundreds = englishNumber write #new 
  numString = numString + "#{hundredsPlace[write -1]}"

    if left > 0
    numString = numString + " "
    end
end

  write = left/10        #  How many tens left to write out?
  left  = left - write*10  #  Subtract off those tens.
  
  if write > 0

    if ((write == 1) and (left > 0))  
      numString = numString + "#{teens[left -1]}"
    
    left = 0

    else 
      numString = numString + "#{tensPlace[write -1]}"
    end

    if left > 0 
       numString = numString + '-'
    
    end
  end
      
  write = left  #  How many ones left to write out?
  left  = 0     #  Subtract off those ones.
  
  if write > 0
    numString = numString + "#{onesPlace[write - 1]}"
  
end


  numString

end

puts "please enter a number between 0 and 10,000"
choice = gets.chomp.to_i

puts englishNumber(choice)