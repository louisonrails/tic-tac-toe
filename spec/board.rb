# frozen_string_literal: true

RSpec.describe Board do
  subject(:board) { described_class.new }

  describe '#initialize' do
    it 'creates a board with 9 empty spaces' do
      expect(board.instance_variable_get(:@grid)).to eq(Array.new(9, ' '))
    end
  end

  describe '#update_board' do
    it 'updates a position with a marker' do
      board.update_board(0, 'X')
      expect(board.instance_variable_get(:@grid)[0]).to eq('X')
    end
  end

  describe '#valid_position?' do
    it 'returns true for an empty valid position' do
      expect(board.valid_position?(0)).to be true
    end

    it 'returns false for an occupied position' do
      board.update_board(0, 'X')
      expect(board.valid_position?(0)).to be false
    end

    it 'returns false for an out-of-range position' do
      expect(board.valid_position?(9)).to be false
    end
  end

  describe '#full?' do
    it 'returns false when the board is not full' do
      expect(board.full?).to be false
    end

    it 'returns true when the board is full' do
      filled_board = described_class.new(Array.new(9, 'X'))
      expect(filled_board.full?).to be true
    end
  end

  describe '#inning_combination?' do
    it 'detects a horizontal win' do
      board.update_board(0, 'X')
      board.update_board(1, 'X')
      board.update_board(2, 'X')

      expect(board.winning_combination?('X')).to be true
    end

    it 'detects a vertical win' do
      board.update_board(0, 'O')
      board.update_board(3, 'O')
      board.update_board(6, 'O')

      expect(board.winning_combination?('O')).to be true
    end

    it 'detects a diagonal win' do
      board.update_board(0, 'X')
      board.update_board(4, 'X')
      board.update_board(8, 'X')

      expect(board.winning_combination?('X')).to be true
    end

    it 'returns false when there is no win' do
      board.update_board(0, 'X')
      board.update_board(1, 'O')
      board.update_board(2, 'X')

      expect(board.winning_combination?('X')).to be false
    end
  end
end
