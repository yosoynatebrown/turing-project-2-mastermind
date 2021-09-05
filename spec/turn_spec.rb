require 'turn'
require 'rspec'

describe Turn do
  before(:each) do
    turn = Turn.new
  end
  describe "#initialize" do
    it 'exists' do
    expect(turn).to be_a(Turn)
    end
  end
  describe "#retrieve_guess" do
    turn.retrieve_guess

  end
  describe "#compare" do
    it 'compares guess string to hidden code and returns num correct and num in correct place' do

    expect(turn.compare).to eq([3, 2])
    end
  end
end
