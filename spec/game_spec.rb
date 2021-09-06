require 'rspec'
require 'game'

describe Game do
  before(:each) do
    @game = Game.new
  end
  it 'exists' do
    expect(@game).to be_a(Game)
  end
end

describe '#game_flow' do
  it 'can initiate start time' do
    game = Game.new
    game.game_flow

    expect(game.start_time).to be_an_instance_of(Time)
  end
end
