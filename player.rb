# frozen_string_literal: true

# The `Player` class represents a player in the Tic Tac Toe game.
# Each player has a name and a marker (either 'X' or 'O').
# This class handles the initialization of player attributes and
# provides a method to display information about the player.
#
class Player
  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  def to_s
    "Hi, i'm #{@name} and i'm going to play with #{@marker}"
  end
end

player1 = Player.new('Louis', 'O')
player2 = Player.new('Julia', 'X')
puts player1
puts player2
