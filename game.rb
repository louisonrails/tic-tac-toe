# frozen_string_literal: true

require_relative 'board'
require_relative 'player'

class Game
  def initialize(board, player1, player2, current_player = player1)
    @board = board
    @player1 = player1
    @player2 = player2
    @current_player = current_player
  end

  def play
    until game_over?
      @board.display
      turn
      switch_player unless game_over?
    end
    @board.display
    if @board.winning_combination?(@current_player.marker)
      puts "#{@current_player.name} wins!"
    else
      puts "It's a tie!"
    end
  end

  def turn
    loop do
      print "#{@current_player.name}, it's your turn! Enter the position (#{@board.display_valid_positions}): "
      position = gets.to_i - 1

      if @board.valid_position?(position)
        @board.update_board(position, @current_player.marker)
        break
      else
        puts 'Invalid move! Try again.'
      end
    end
  end

  def game_over?
    @board.winning_combination?(@current_player.marker) || @board.full?
  end

  def game_tied?
    @board.full? && !@board.winning_combination?(@current_player.marker)
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
end
