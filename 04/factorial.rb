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

