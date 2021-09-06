require 'rspec'
require 'game'

describe Game do
  before(:each) do
    @game = Game.new
  end
  it 'exists' do
    expect(@game).to be_a(Game)
  end

  it '#game_flow' do
    @game.game_flow
  end
end
