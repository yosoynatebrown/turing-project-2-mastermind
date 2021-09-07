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
    puts "|  Guess     Colors Correct    Colors in Correct Positions    |"
    @history.each do |guess, results_array|
      puts "|   #{guess}                #{results_array[0]}               #{results_array[1]}                     |"
    end
  end
end

player1 = Player.new
player1.add_to_history('rrrr', 3, 2)
player1.add_to_history('gggg', 2, 2)
player1.display_history
