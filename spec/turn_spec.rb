require 'turn'
require 'rspec'

describe Turn do
  it 'exists' do
    turn = Turn.new(['r', 'g', 'b', 'y'], @player1 = Player.new)
    expect(turn).to be_a(Turn)
  end
  end
  describe "#guess_prompt" do
    it 'prints out prompt' do
      turn = Turn.new(['r', 'g', 'b', 'y'], @player1 = Player.new)

      expect { turn.guess_prompt }.to output("I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?\n").to_stdout
    end
  end
  describe "#validate_guess" do
    it 'stores a guess correctly' do
      turn = Turn.new(['r', 'g', 'b', 'y'], @player1 = Player.new)

      expect { turn.guess_prompt }.to output("I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?\n").to_stdout
    end
  end
  describe "#compare" do
    it 'compares guess string to hidden code and returns num correct and num in correct place' do
      turn.compare
    expect(@colors_correct).to eq(3)
    expect(@colors_in_correct_positions).to eq(2)
    end
  end
