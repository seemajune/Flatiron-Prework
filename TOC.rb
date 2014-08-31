# Part I: Write a program which will display a Table of Contents 
# so that it looks like this:
#                 Table of Contents                
                                                 
# Chapter 1:  Numbers                        page 1
# Chapter 2:  Letters                       page 72
# Chapter 3:  Variables                    page 118

# lineWidth = 40

# chapter1 = "Chapter 1:"
# 	title1 = "Numbers"
# 	index1 = "page 1"

# chapter2 = "Chapter 2:"
# 	title2 = "Letters"
# 	index2 = "page 72"

# chapter3 =  "Chapter 3:"
# 	title3 = "Variables"
# 	index3 = "page 188"

# puts chapter1.ljust(lineWidth) + title1.center(lineWidth/2) + index1.rjust(lineWidth)

# puts chapter2.ljust(lineWidth)+ title2.center(lineWidth/2) + index2.rjust(lineWidth)

# puts chapter3.ljust(lineWidth) + title3.center(lineWidth/2) + index3.rjust(lineWidth)

# Part II: Rewrite your table of contents program. 
# Start the program with an array holding all of the 
# information for your Table of Contents (chapter names, page numbers, etc.). 
# Then print out the information from the array in a beautifully 
# formatted Table of Contents.:

table_of_contents =	[["Chapter 1", "Numbers", "page 1"], 
["Chapter 2", "Letters", "page 72"], 
["Chapter 3", "Variables", "page 188" ]]

lineWidth = 20

table_of_contents[0].each do |x| print x.ljust(lineWidth)
end

table_of_contents[1].each do |x| print x.ljust(lineWidth)
end

table_of_contents[2].each do |x| print x.ljust(lineWidth)
end



