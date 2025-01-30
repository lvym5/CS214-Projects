#! /usr/bin/ruby
# Computing the area of a rectangle given the height and width 
# Input: height and width
# output: area of a rectangle
#
# Completed by: Lily McAboy
# Date: 1/20/2024
#
# #######################################################################

def rectangle_area(height, width) #create function
  height * width
end 

if __FILE__ == $0
  puts "Compute the area of a rectangle." 
  print "Enter the height: "
  height = gets.chomp.to_f # read in height
  print "Enter the width: "
  width = gets.chomp.to_f # read in width
  print "The area of the rectangle is: "
  puts rectangle_area(height, width) #return the area of a rectangle
end 

