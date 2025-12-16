# frozen_string_literal: true

RSpec.describe Player do
  subject(:player) { described_class.new('Joaquim', 'X') }

  describe '#initialize' do
    it 'assigns a name' do
      expect(player.name).to eq('Joaquim')
    end

    it 'assigns a marker' do
      expect(player.marker).to eq('X')
    end
  end

  describe '#to_s' do
    it 'returns a descriptive string' do
      expect(player.to_s).to eq("Hi, i'm Joaquim and i'm going to play with X")
    end
  end
end
