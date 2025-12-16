# frozen_string_literal: true

# The `Player` class represents a player in the Tic Tac Toe game.
# Each player has a name and a marker (either 'X' or 'O').
# This class handles the initialization of player attributes and
# provides a method to display information about the player.
#
class Player
  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  def to_s
    "Hi, i'm #{@name} and i'm going to play with #{@marker}"
  end
end
