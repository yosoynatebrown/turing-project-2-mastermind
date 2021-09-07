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
    @player1.add_to_history('rrrr', 3, 2)
    @player1.add_to_history('gggg', 2, 2)

    expect(@player1.history).to be_a(Hash)
  end
  it '#display_history' do
    @player1.add_to_history('rrrr', 3, 2)
    @player1.add_to_history('gggg', 2, 2)
    expect { @player1.display_history }.to output("\n|  Guess     Colors Correct    Colors in Correct Positions    |
|   RRRR                3               2                     |
|   GGGG                2               2                     |
\n").to_stdout

  end
end
