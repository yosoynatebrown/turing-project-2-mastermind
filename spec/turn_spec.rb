require 'turn'
require 'rspec'

describe Turn do
  describe "#initialize" do
    it 'exists' do
      turn = Turn.new('rrgb')
    expect(turn).to be_a(Turn)
    end
  end
  describe "#compare" do
    it 'compares guess string to hidden code and returns num correct and num in correct place' do
      turn = Turn.new('rrgb')

    expect(turn.compare).to eq([3, 2])
    # expect(turn.compare('grrb')).to eq([3, 4])
    # expect(turn.compare('brgy')).to eq([3, 1])
    end
  end
end
