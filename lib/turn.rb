require './lib/player'


class Turn
  attr_reader :colors_correct,
              :colors_in_correct_positions
  attr_accessor :guess
  def initialize(hidden_code, player1)
    @guess = []
    @hidden_code = hidden_code
    @player1 = player1
    @colors_correct = 0
    @colors_in_correct_positions = 0
  end

  def guess_prompt
    print "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (h)istory to see your history of guesses, or (q)uit at any time to end the game.
    What's your guess?\n"
  end

  def ask_for_guess
      @guess = gets.chomp.downcase
      @player1.increment_number_of_guesses
  end

  def validate_guess(guess)
    if guess == 'q' || guess == 'quit'
      @player1.quit = true
    elsif guess == 'c' || guess == 'cheat'
      puts "\nKinda lame to cheat like that but here's your hidden code: #{@hidden_code.join("").upcase}\n\n"
    elsif guess == 'h' || guess == 'history'
      @player1.display_history
    elsif guess.length < 4
      puts "\nYour guess is too short. Try again.\n\n"
    elsif guess.length > 4
      puts "\nYour guess is too long. Try again.\n\n"
    else
      @guess = guess
    end
  end

  def win_checker
    if @guess.split("") == @hidden_code
      @player1.win
    end
  end

  def compare
    individual_guesses = @guess.split("")
    individual_guesses.map.with_index {|color, i| color == @hidden_code[i]}
    @colors_correct = (individual_guesses & @hidden_code).count
    @colors_in_correct_positions = individual_guesses.map.with_index {|color, i|
       color == @hidden_code[i]}.count(true)
  end

  def turn_flow
    guess_prompt
    ask_for_guess
    validate_guess(@guess)
    win_checker
    compare

    unless @guess == 'c' || @guess == 'cheat' || @guess == 'q' || @guess == 'quit' || @guess.length > 4 || @guess.length < 4
      puts "\n'#{@guess.upcase}' has #{@colors_correct} of the correct elements with #{@colors_in_correct_positions} in the correct positions
      You've taken #{@player1.number_of_guesses} guess(es)\n"
      @player1.add_to_history(@guess, @colors_correct, @colors_in_correct_positions)
    end
  end
end
