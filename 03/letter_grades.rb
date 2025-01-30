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

