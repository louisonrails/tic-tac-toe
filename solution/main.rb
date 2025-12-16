require_relative 'board'
require_relative 'player'
require_relative 'game'

player1 = Player.new('Player 1', 'O')
player2 = Player.new('Player 2', 'X')
board = Board.new
game = Game.new(board, player1, player2)

game.play
