require 'rspec'
require 'game'

describe Game do
  before(:each) do
    @game = Game.new
  end
  it 'exists' do

    expect(@game).to be_a(Game)
  end
  it 'creates hidden_code instance variables' do

    expect(@game.hidden_code).to be_an(Array)
  end
  it 'creates player object instance variables' do
    
    expect(@game.player1).to be_an_instance_of(Player)
  end

end

describe '#start_time' do
  it 'can initiate start time' do
    game = Game.new

    expect(game.start_time).to be_an_instance_of(Time)
  end
end
describe '#end_time' do
  it 'can set end time' do
    game = Game.new
    game.end_time

    expect(game.end_time).to be_an_instance_of(Time)
  end
end
