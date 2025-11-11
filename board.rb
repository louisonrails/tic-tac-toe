# frozen_string_literal: true

class Board
  def initialize(grid = Array.new(9, ' '))
    @grid = grid
  end

  def display
    puts " #{@grid[0]} | #{@grid[1]} | #{@grid[2]} "
    puts '---+---+---'
    puts " #{@grid[3]} | #{@grid[4]} | #{@grid[5]} "
    puts '---+---+---'
    puts " #{@grid[6]} | #{@grid[7]} | #{@grid[8]} "
  end
end

board = Board.new(['X', 'O', 'X', 'O', 'X', 'O', 'X', ' ', ' '])
board.display
