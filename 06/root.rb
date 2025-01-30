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



