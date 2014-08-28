# Write a program which will display a Table of Contents 
# so that it looks like this:
#                 Table of Contents                
                                                 
# Chapter 1:  Numbers                        page 1
# Chapter 2:  Letters                       page 72
# Chapter 3:  Variables                    page 118

lineWidth = 40

chapter1 = "Chapter 1:"
	title1 = "Numbers"
	index1 = "page 1"

chapter2 = "Chapter 2:"
	title2 = "Letters"
	index2 = "page 72"

chapter3 =  "Chapter 3:"
	title3 = "Variables"
	index3 = "page 188"

puts chapter1.ljust(lineWidth) + title1.center(lineWidth/2) + index1.rjust(lineWidth)

puts chapter2.ljust(lineWidth)+ title2.center(lineWidth/2) + index2.rjust(lineWidth)

puts chapter3.ljust(lineWidth) + title3.center(lineWidth/2) + index3.rjust(lineWidth)