require 'turn'
require 'rspec'

describe Turn do
  describe "#initialize" do
    xit 'exists' do
      turn = Turn.new
    expect(turn).to be_a(Turn)
    end
  end
  describe "#compare" do
    it 'compares guess string to hidden code and returns num correct and num in correct place' do
      turn = Turn.new




    expect(turn.compare('rrgb')).to eq([3, 2])
    end
  end
end
