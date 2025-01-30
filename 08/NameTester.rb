
# Name: Lily McAboy
# Date: 3/15/2024
################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class Name 
  def initialize(first, middle, last)
    @first, @middle, @last = first, middle, last
  end
  attr_reader :first, :middle, :last

  def fullName()
    return @first + " " + @middle + " " + @last
  end

  def print()
    puts fullName()
    return fullName()
  end

  def setFirst(aFirst)
    @first = aFirst
  end

  def setMiddle(aMiddle)
    @middle = aMiddle
  end

  def setLast(aLast)
    @last = aLast
  end

  def lfmi
    "#{@last}, #{@first} #{@middle[0]}."
  end
  def read()
    first = gets.chomp
    middle = gets.chomp
    last = gets.chomp
  end

end

def testName
  name = Name.new("John", "Paul", "Jones")

  assert(name.first == "John", "first failed")
  assert(name.middle == "Paul", "middle failed")
  assert(name.last == "Jones", "last failed")
  assert(name.fullName == "John Paul Jones", "fullName failed")
  assert(name.print == "John Paul Jones", "print failed")

  name.setFirst("Lily")
  assert(name.first == "Lily", "setFirst failed")
  name.setMiddle("Violet")
  assert(name.middle == "Violet", "setMiddle failed")
  name.setLast("McAboy")
  assert(name.last == "McAboy", "setLast failed")
  assert(name.fullName == "Lily Violet McAboy", "fullName after set failed")
  assert(name.print == "Lily Violet McAboy", "print after set failed")

  assert(name.lfmi == "McAboy, Lily V.", "lfmi failed")

  puts "All tests passed!"
end

testName


