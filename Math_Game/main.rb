require './Game.rb'
require './Player.rb'

print "Enter Player 1 >   "
name = $stdin.gets.chomp
player_1 = Player.new(name)
puts "Welcome Player 1: #{name}!"
print "Enter Player 2 >   "
name = $stdin.gets.chomp
player_2 = Player.new(name)
puts "Welcome Player 2: #{name}!"
sumGame = Game.new(player_1, player_2)
puts "Type 'start' to start game or 'exit' to exit"
print " >>>   "
sumGame.start