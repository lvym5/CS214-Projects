Script started on 2024-04-15 17:04:45-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="93" LINES="29"]
]0;lvm5@remotel1: ~/214/projects/11/ruby[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/11/ruby[00m$ cat List.rb ss earch.rb 
# List.rb implements a linked list structure in Ruby.
#
# Name: Lily McAboy
# Date:
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List
  # initialize a List to be empty
  # Postcondition: first == nil and last == nil and length == 0
  def initialize
    @first = nil
    @last = nil
    @length = 0
  end

  attr_reader :length

  # Am I empty?
  # Return: length == 0
  def empty?
    @length == 0
  end

  # append a value to me
  # Receive: value, the item to be appended
  # Postcondition: my last item is value and
  #                 my length is one more than it was
  def append(value)
    newNode = Node.new(value, nil)
    if empty?
      @first = newNode
    else
      @last.next = newNode
    end

    @last = newNode
    @length += 1
    self
  end


  # print my items
  # Postcondition: my items have been displayed to the screen

  # Replace this line with a definition for method 'print'
  def print
    temp = @first
    while !temp.nil?
      printf " #{temp.value}"
      temp = temp.next
    end
  end


  # Traverse through a list and find the number

  def searchFor(myValue)
    temp = @first
    myIndex = 0
    while temp
      if temp.value == myValue
        return myIndex
      end
      temp = temp.next
      myIndex += 1
    end
    return -1
  end


  # Replace this line with a declaration for class Node
  #  (and its methods)
  class Node
    def initialize(item, link)
      @value = item
      @next = link
    end


    attr_reader :value
    attr_accessor :next
  end

end
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
]0;lvm5@remotel1: ~/214/projects/11/ruby[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/11/ruby[00m$ ruby search.rb
list 1 contents: 
 99 88 77 66 55
list 2 contents: 
 55 66 77 88 99
list 3 contents: 
 55 77 99 88 66
list 4 contents: 
 55 66 77 88
If the index returned is -1, then the number is not found in the list.
In list 1, 99 is found at index: 0

In list 2, 99 is found at index: 4

In list 3, 99 is found at index: 2

In list 4, 99 is found at index: -1

]0;lvm5@remotel1: ~/214/projects/11/ruby[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/11/ruby[00m$ exit

Script done on 2024-04-15 17:05:02-04:00 [COMMAND_EXIT_CODE="0"]
