# frozen_string_literal: true

RSpec.describe Game do
  let(:board) { Board.new }
  let(:player1) { Player.new('Alice', 'X') }
  let(:player2) { Player.new('Bob', 'O') }

  subject(:game) { described_class.new(board, player1, player2) }

  describe '#initialize' do
    it 'sets the starting player to player1 by default' do
      current_player = game.instance_variable_get(:@current_player)
      expect(current_player).to eq(player1)
    end
  end

  describe '#switch_player' do
    it 'switches from player1 to player2' do
      game.switch_player
      current_player = game.instance_variable_get(:@current_player)
      expect(current_player).to eq(player2)
    end

    it 'switches back to player1' do
      game.switch_player
      game.switch_player
      current_player = game.instance_variable_get(:@current_player)
      expect(current_player).to eq(player1)
    end
  end

  describe '#game_over?' do
    it 'returns true when the current player has won' do
      board.update_board(0, 'X')
      board.update_board(1, 'X')
      board.update_board(2, 'X')

      expect(game.game_over?).to be true
    end

    it 'returns true when the board is full' do
      full_grid = %w[X O X O X O O X O]
      full_board = Board.new(full_grid)
      tied_game = described_class.new(full_board, player1, player2)

      expect(tied_game.game_over?).to be true
    end
  end

  describe '#game_tied?' do
    it 'returns true when the board is full and no player has won' do
      grid = %w[X O X O X O O X O]
      tied_board = Board.new(grid)
      tied_game = described_class.new(tied_board, player1, player2)

      expect(tied_game.game_tied?).to be true
    end
  end
end
