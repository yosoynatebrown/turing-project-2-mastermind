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
end
