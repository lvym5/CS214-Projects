Script started on 2024-04-11 19:28:56-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;lvm5@remotel3: ~/214/projects/10/ruby[01;32mlvm5@remotel3[00m:[01;34m~/214/projects/10/ruby[00m$ cat Bird.rb birds.rb Duck.rb FlyingBird.rb  Goose.rb Kiwi.rb OS strich.rb Oww l.rb Penguin.rb WalkingBird.rb 

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

# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Lily McAboy
# Date: 4/4/2024
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './WalkingBird.rb'
require './FlyingBird.rb'
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Penguin.new "Carl"
bird4.print

bird5 = Ostrich.new "Jessup"
bird5.print

bird6 = Kiwi.new "Eliazar"
bird6.print

puts "\n\n"

# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#   #
#   # Begun by: Dr. Adams, for CS 214 at Calvin College.
#   # Completed by:
#   # Date:
#

require './Bird.rb'
require './FlyingBird.rb'

class Duck < FlyingBird

  def call
    "Quack"
  end

end


# FlyingBird.rb defines the flying bird class with abstract method definement for movement
# Name: Lily McAboy
# Date: 4/10/2024
#
# ####################################

require './Bird.rb'

class FlyingBird < Bird

  def movement
    "flew past"
  end

end
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

#Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#   from the Bird superclass.
#   #
#   # Begun by: Dr. Adams, for CS 214 at Calvin College.
#   # Completed by:
#   # Date:
#

require './Bird.rb'
require './WalkingBird.rb'

class Ostrich < WalkingBird

  def call
    "Snork"
  end

end

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

#Penguin.rb | Defines the Penguin class which inherits attributes and methods
#   from the Bird superclass.
#   #
#   # Begun by: Dr. Adams, for CS 214 at Calvin College.
#   # Completed by:
#   # Date:
#

require './Bird.rb'
require './WalkingBird.rb'

class Penguin < WalkingBird

  def call
    "Huh-huh-huh-huuuuh"
  end

end

# WalkingBird.rb defines the walk bird class with abstract method definement for movement
# Name: Lily McAboy
# Date: 4/10/2024
#
# ####################################

require './Bird.rb'

class WalkingBird < Bird

  def movement
    "walked past"
  end

end

]0;lvm5@remotel3: ~/214/projects/10/ruby[01;32mlvm5@remotel3[00m:[01;34m~/214/projects/10/ruby[00m$ [Kruby birds.rub  b

Welcome to the Bird Park!

DonaldDuck Just flew past and says Quack
MotherGoose Just flew past and says Honk!
WoodseyOwl Just flew past and says WHOOOOOOO
CarlPenguin Just walked past and says Huh-huh-huh-huuuuh
JessupOstrich Just walked past and says Snork
EliazarKiwi Just walked past and says Hello Branden


]0;lvm5@remotel3: ~/214/projects/10/ruby[01;32mlvm5@remotel3[00m:[01;34m~/214/projects/10/ruby[00m$ exit

Script done on 2024-04-11 19:29:31-04:00 [COMMAND_EXIT_CODE="0"]
