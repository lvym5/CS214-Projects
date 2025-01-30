Script started on 2024-02-09 15:57:04-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="209" LINES="69"]
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ cat c factorial.rb
################################
# Name: Lily McAboy
# Date: 2/14/2024
# CS 214 Project 04
################################

if __FILE__ == $0
  print "Enter your desired factorial number: "
  user_num = gets.chomp.to_f

  fact = 1
  for i in 1.. user_num do
    fact = fact * i
  end

  print "The factorial of "
  print user_num 
  print " is "
  print fact
  print "\n"

end

]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ ruby factorial.rb
Enter your desired factorial number: 5
The factorial of 5.0 is 120
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ ruby factorial.rb
Enter your desired factorial number: 6
The factorial of 6.0 is 720
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ ruby factorial.rb
Enter your desired factorial number: 7
The factorial of 7.0 is 5040
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ ruby factorial.rb
Enter your desired factorial number: 3
The factorial of 3.0 is 6
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ exit
exit

Script done on 2024-02-09 15:57:32-05:00 [COMMAND_EXIT_CODE="0"]
