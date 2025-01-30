# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#   #
#   # Begun by: Dr. Adams, for CS 214 at Calvin College.
#   # Completed by:
#   # Date:
#

require './Bird.rb'
require './FlyingBird.rb'

class Owl < FlyingBird

  def call
    "WHOOOOOOO"
  end

end

