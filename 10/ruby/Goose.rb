#Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#   #
#   # Begun by: Dr. Adams, for CS 214 at Calvin College.
#   # Completed by:
#   # Date:
#

require './Bird.rb'
require './FlyingBird.rb'

class Goose < FlyingBird

  def call
    "Honk!"
  end

end



