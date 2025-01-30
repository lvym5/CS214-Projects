
# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Lily McAboy
# Date: 4/4/2024
####################################################
class Bird

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def call
    'Squaaaaaaawk!'
  end

  def className
    self.class.to_s
  end

  def print
    puts name + className + " Just " + movement + " and says " + call
   end

  def movement
  end

end

