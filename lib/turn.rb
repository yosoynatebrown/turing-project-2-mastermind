require './lib/player'


class Turn
  attr_accessor :guess
  def initialize(hidden_code, player1)
    @guess = []
    @hidden_code = hidden_code
    @player1 = player1
    @colors_correct = 0
    @colors_in_correct_positions = 0
    turn_flow
  end

  def guess_prompt
    print "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?\n"
    @guess = gets.chomp.downcase
  end

  def validate_guess
    if @guess == 'q' || @guess == 'quit'
      @player1.quit = true
    elsif @guess == 'c' || @guess == 'cheat'
      puts "\nKinda lame to cheat like that but here's your hidden code: #{@hidden_code.join("").upcase}\n\n"
    elsif @guess.length < 4
      puts "\nYour guess is too short. Try again.\n\n"
      guess_prompt
    elsif @guess.length > 4
      puts "\nYour guess is too long. Try again.\n\n"
      guess_prompt
    end
  end

  def win_checker
    if @guess.split('') == @hidden_code
      @player1.win
    end
  end

  def compare
    individual_guesses = @guess.split('')
    individual_guesses.map.with_index {|color, i| color == @hidden_code[i]}
    @colors_correct = (individual_guesses & @hidden_code).count
    @colors_in_correct_positions = individual_guesses.map.with_index {|color, i|
       color == @hidden_code[i]}.count(true)
  end

  def turn_flow
    guess_prompt
    validate_guess
    win_checker
    compare
    @player1.increment_number_of_guesses
    unless @guess == 'c' || @guess == 'cheat' || @guess == 'q' || @guess == 'quit'
      puts "'#{@guess.upcase}' has #{@colors_correct} of the correct elements with #{@colors_in_correct_positions} in the correct positions
      You've taken #{@player1.number_of_guesses} guess(es)"
    end
  end
end
