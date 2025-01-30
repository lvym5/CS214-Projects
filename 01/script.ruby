Script started on 2024-01-20 12:53:59-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="213" LINES="68"]
]0;lvm5@maroon07: ~/214/projects/01/clojure[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01/clojure[00m$ cat rectangle_area.rb
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

]0;lvm5@maroon07: ~/214/projects/01/clojure[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01/clojure[00m$ ruby rectangle_re  area.rb
Compute the area of a rectangle.
Enter the height: 2
Enter the width: 6
The area of the rectangle is: 12.0
]0;lvm5@maroon07: ~/214/projects/01/clojure[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01/clojure[00m$ ruby rectangle_area.rb
Compute the area of a rectangle.
Enter the height: 3
Enter the width: 5.5
The area of the rectangle is: 16.5
]0;lvm5@maroon07: ~/214/projects/01/clojure[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01/clojure[00m$ ruby rectangle_area.rb
Compute the area of a rectangle.
Enter the height: 8
Enter the width: 2.7
The area of the rectangle is: 21.6
]0;lvm5@maroon07: ~/214/projects/01/clojure[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01/clojure[00m$ ruby rectangle_area.rb
Compute the area of a rectangle.
Enter the height: 9
Enter the width: 9
The area of the rectangle is: 81.0
]0;lvm5@maroon07: ~/214/projects/01/clojure[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01/clojure[00m$ exit
exit

Script done on 2024-01-20 12:54:46-05:00 [COMMAND_EXIT_CODE="0"]
