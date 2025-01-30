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

