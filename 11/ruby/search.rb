# search.rb tests a Ruby linked list.
#
# Name: Lily McAboy 
# Date: 4/15/2024

require './List'

list1 = List.new
list2 = List.new
list3 = List.new
list4 = List.new

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)
list4.append(55).append(66).append(77).append(88)

puts "list 1 contents: "
list1.print
puts

puts "list 2 contents: "
list2.print
puts

puts "list 3 contents: "
list3.print
puts

puts "list 4 contents: "
list4.print
puts

puts "If the index returned is -1, then the number is not found in the list." 

puts "In list 1, 99 is found at index: #{list1.searchFor(99)}"
puts

puts "In list 2, 99 is found at index: #{list2.searchFor(99)}"
puts

puts "In list 3, 99 is found at index: #{list3.searchFor(99)}"
puts 

puts "In list 4, 99 is found at index: #{list4.searchFor(99)}"
puts
