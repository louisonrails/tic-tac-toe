# frozen_string_literal: true

# The `Board` class represents the game board for a Tic Tac Toe game.
# It handles the state of the board, updates the positions, checks for
# winning combinations, and validates moves.
#
class Board
  WINNING_COMBINATIONS = [
    [0, 1, 2], # Top row
    [3, 4, 5], # Middle row
    [6, 7, 8], # Bottom row
    [0, 3, 6], # Left column
    [1, 4, 7], # Center column
    [2, 5, 8], # Right column
    [0, 4, 8], # Diagonal (top-left to bottom-right)
    [2, 4, 6]  # Diagonal (top-right to bottom-left)
  ].freeze

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

  def display_valid_positions
    print 'Available positions: '
    @grid.each_with_index do |cell, index|
      print "#{index + 1} " if cell == ' '
    end
  end

  def update_board(position, marker)
    if valid_position?(position)
      @grid[position] = marker
    else
      puts 'Invalid move! Position already taken.'
    end
  end

  def valid_position?(position)
    @grid[position] == ' ' and position.between?(0, 8)
  end

  def full?
    !@grid.include?(' ')
  end

  def winning_combination?(marker)
    WINNING_COMBINATIONS.any? do |combo|
      combo.all? { |index| @grid[index] == marker }
    end
  end
end
