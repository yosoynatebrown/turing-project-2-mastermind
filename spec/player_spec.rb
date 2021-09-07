require 'rspec'
require 'player'


describe Player do
  before(:each) do
    @player1 = Player.new
  end
  it 'exists' do
  expect(@player1).to be_an_instance_of(Player)
  end
  it '#increment_number_of_guesses' do
    expect(@player1.number_of_guesses).to eq(0)
    @player1.increment_number_of_guesses
    expect(@player1.number_of_guesses).to eq(1)
  end
  it '#win' do
    @player1.win
    expect(@player1.won).to eq(true)
  end
  it '#add_to_history (and capitalizes)' do
    @player1.add_to_history('rrrr')
    @player1.add_to_history('gggg')
require "pry"; binding.pry
    expect(@player1.history).to eq(['RRRR', 'GGGG'])
  end
end
