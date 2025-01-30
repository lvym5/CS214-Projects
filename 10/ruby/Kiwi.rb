#Kiwi.rb | Defines the Kiwi class which inherits attributes and methods
#   from the Bird superclass.
#   #
#   # Begun by: Dr. Adams, for CS 214 at Calvin College.
#   # Completed by:
#   # Date:
#

require './Bird.rb'
require './WalkingBird.rb'

class Kiwi < WalkingBird

  def call
    "Hello Branden"
  end

end

