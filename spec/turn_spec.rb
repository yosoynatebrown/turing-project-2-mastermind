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
    (g)reen, (b)lue, and (y)ellow. Use (h)istory to see your history of guesses, or (q)uit at any time to end the game.
    What's your guess?\n").to_stdout
  end
end
describe "#validate_guess" do
  it 'stores a guess correctly' do
      turn = Turn.new(['r', 'g', 'b', 'y'], @player1 = Player.new)
      turn.validate_guess('rrrr')

      expect(turn.guess).to eq('rrrr')
  end
  it 'validates a guess length' do
      turn = Turn.new(['r', 'g', 'b', 'y'], @player1 = Player.new)

      expect { turn.validate_guess('rr') }.to output("\nYour guess is too short. Try again.\n\n").to_stdout
      expect { turn.validate_guess('rrrrrr') }.to output("\nYour guess is too long. Try again.\n\n").to_stdout
  end
  it 'allows you to cheat' do
      turn = Turn.new(['r', 'g', 'b', 'y'], @player1 = Player.new)

      expect { turn.validate_guess('cheat') }.to output("\nKinda lame to cheat like that but here's your hidden code: RGBY\n\n").to_stdout
  end
end
describe "#win_checker" do
  it 'sets player1 won to true' do
      turn = Turn.new(['r', 'g', 'b', 'y'], @player1 = Player.new)
      turn.validate_guess('rgby')
      turn.win_checker

      expect(@player1.won).to be true
  end
end
describe "#compare" do
  it 'compares guess string to hidden code and returns num correct and num in correct place' do
      turn = Turn.new(['r', 'g', 'b', 'y'], @player1 = Player.new)
      turn.validate_guess('grby')
      turn.compare

      expect(turn.colors_correct).to eq(4)
      expect(turn.colors_in_correct_positions).to eq(2)
  end
end
