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
