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

describe '#start_time' do
  it 'can initiate a start time' do
    game = Game.new

    expect(game.start_time).to be_an_instance_of(Time)
  end

describe '#turn_flow' do
  it 'can exit game once player wins' do
    game = Game.new
    game.player1.win
#The following test returns nil when the turn flow has successfully exited
    expect(game.turn_flow).to be(nil)
  end

  describe '#end_time' do
    it 'can initiate an end time' do
      game = Game.new

      expect(game.end_time).to be_an_instance_of(Time)
    end
  end

  describe '#game_flow' do
    it 'can track game time and output message when player wins' do
      game = Game.new
      game.player1.win

      expect(game.end_time).to be_an_instance_of(Time)
      expect(game.end_time).not_to equal(game.start_time)
      expect(game.player1.win).to be(true)
    end
  end
end
end
