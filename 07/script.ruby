Script started on 2024-02-29 19:59:25-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;lvm5@remotel1: ~/214/projects/07[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/07[00m$ cat readingarray.rb
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
]0;lvm5@remotel1: ~/214/projects/07[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/07[00m$ ruby readingarray.rb
Enter the numbers of your desired array: 
1.0 2.0 3.0 4.0
Here is your resulting array: 
1.0
2.0
3.0
4.0
]0;lvm5@remotel1: ~/214/projects/07[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/07[00m$ exit

Script done on 2024-02-29 19:59:44-05:00 [COMMAND_EXIT_CODE="0"]
