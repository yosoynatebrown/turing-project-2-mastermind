require 'game'
require 'player'


class Turn
  attr_reader :guess
  def initialize
    turn_flow
  end

  def retrieve_guess
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
    @guess = gets.chomp.downcase
  end

  def validate_guess
    if @guess.length < 4
      puts "Your guess is too short. Try again."
    elsif @guess.length > 4
      puts "Your guess is too long. Try again."
    end
  end

  def quit_checker
    if @guess == 'q' || @guess == 'quit'
      @player1.quit == true
    end
  end

  def win_checker
    if @guess.split('') == game.hidden_code
    end
  end

  def compare
    individual_guesses = @guess.split('')
    individual_guesses.map.with_index {|color, i| color == game.hidden_code[i]}
    colors_correct = (individual_guesses & game.hidden_code).count
    colors_in_correct_positions = individual_guesses.map.with_index {|color, i|
       color == game.hidden_code[i]}.count(true)
    return [colors_correct, colors_in_correct_positions]
  end

  def turn_flow
    retrieve_guess
    quit_checker
    validate_guess
    win_checker
    feedback = compare
    puts "'#{@guess.upcase}' has #{feedback[0]} of the correct elements with #{feedback[1]} in the correct positions
    You've taken #{player1.number_of_guesses} guess(es)"
  end
end
