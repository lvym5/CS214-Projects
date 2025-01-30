Script started on 2024-03-20 16:23:34-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="80" LINES="32"]
]0;lvm5@remotel1: ~/214/projects/08[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/08[00m$ cat NameTester.rb

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


]0;lvm5@remotel1: ~/214/projects/08[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/08[00m$ ruby NameTester.rb
John Paul Jones
Lily Violet McAboy
All tests passed!
]0;lvm5@remotel1: ~/214/projects/08[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/08[00m$ exit

Script done on 2024-03-20 16:23:52-04:00 [COMMAND_EXIT_CODE="0"]
