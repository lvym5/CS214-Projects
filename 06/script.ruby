Script started on 2024-02-23 15:53:16-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="159" LINES="42"]
]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ cat root.rb
################################################
# Using Ruby to calculate the roots of the quadratic formula
# Name: Lily McAboy
# Date: 2/23/2024
# CS 214 Project 06
#
# ##############################################
#
#

def root(a, b, c) 
  discr = (b*b) - (4 * a * c);
  root1 = (-b + Math.sqrt(discr))/(2 * a);
  root2 = (-b - Math.sqrt(discr))/(2*a);
  [root1, root2]

end 

def main
  print "Enter your a, b, and c values.";
  a = gets.chomp.to_f
  b = gets.chomp.to_f
  c = gets.chomp.to_f

  if a == 0
    print "a cannot be 0."
  end 

  result = root(a, b, c)
  puts "Root1: #{result[0]}"
  puts "Root2: #{result[1]}"
end

main



]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ ruby root.rb
Enter your a, b, and c values.1
25
1
Root1: -0.04006420562288859
Root2: -24.95993579437711
]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ exit

Script done on 2024-02-23 15:53:34-05:00 [COMMAND_EXIT_CODE="0"]
