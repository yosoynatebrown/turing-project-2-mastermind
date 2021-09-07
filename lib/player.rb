class Player
  attr_accessor :quit,
                :won,
                :number_of_guesses,
                :history
  def initialize
    @number_of_guesses = 0
    @won = false
    @quit = false
    @history = {}
  end

  def increment_number_of_guesses
    @number_of_guesses += 1
  end

  def win
    @won = true
  end

  def add_to_history(guess, colors_correct, colors_in_correct_positions)
    @history[guess.upcase] = [colors_correct, colors_in_correct_positions]
  end

  def display_history
    puts "\n|  Guess     Colors Correct    Colors in Correct Positions    |"
    @history.each do |guess, history_results_array|
      puts "|   #{guess}                #{history_results_array[0]}               #{history_results_array[1]}                     |"
    end
    puts "\n"
  end
end
