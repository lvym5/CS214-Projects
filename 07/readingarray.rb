############################################
# Reading and printing an array in Ruby
# Name: Lily McAboy
# Date: 2/29/2024
# CS 214 Project 07
# ##########################################
#
#

def printArray(arr)
  arr.each do |elem|
    puts elem
  end
end

def readArray
  puts "Enter the numbers of your desired array: "
  input = gets.chomp
  arr = input.split.map(&:to_f)
  return arr
end

def main
  myArray = readArray
  puts "Here is your resulting array: "
  printArray(myArray)

end

main
