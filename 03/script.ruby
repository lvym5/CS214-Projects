Script started on 2024-02-06 10:39:37-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;lvm5@remotel1: ~/214/projects/03[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/03[00m$ cat letter_grades.rb
# Name: Lily McAboy
# Date: 02/5/2024
###############################################################

def letter_grade(grade)
  usr_grade = grade / 10
  case usr_grade
  when 9..10
    return "A"
  when 8..9
    return "B"
  when 7..8
    return "C"
  when 6..7 
    return "D"
  else
    return "F"
  end
end

if __FILE__ == $0
  puts "Enter your grade: "
  grade = gets.chomp.to_f
  print "Your letter grade is: "
  puts letter_grade(grade)
end

]0;lvm5@remotel1: ~/214/projects/03[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/03[00m$ ruby letter_grades.rb
Enter your grade: 
100
Your letter grade is: A
]0;lvm5@remotel1: ~/214/projects/03[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/03[00m$ ruby letter_grades.rb
Enter your grade: 
98
Your letter grade is: A
]0;lvm5@remotel1: ~/214/projects/03[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/03[00m$ ruby letter_grades.rb
Enter your grade: 
87
Your letter grade is: B
]0;lvm5@remotel1: ~/214/projects/03[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/03[00m$ ruby letter_grades.rb
Enter your grade: 
72
Your letter grade is: C
]0;lvm5@remotel1: ~/214/projects/03[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/03[00m$ ruby letter_grades.rb
Enter your grade: 
66
Your letter grade is: D
]0;lvm5@remotel1: ~/214/projects/03[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/03[00m$ ruby letter_grades.rb
Enter your grade: 
23
Your letter grade is: F
]0;lvm5@remotel1: ~/214/projects/03[01;32mlvm5@remotel1[00m:[01;34m~/214/projects/03[00m$ exit
exit

Script done on 2024-02-06 10:40:18-05:00 [COMMAND_EXIT_CODE="0"]
