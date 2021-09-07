class Player
  attr_accessor :quit,
                :won,
                :number_of_guesses,
                :history
  def initialize
    @number_of_guesses = 0
    @won = false
    @quit = false
    @history = []
  end

  def increment_number_of_guesses
    @number_of_guesses += 1
  end

  def win
    @won = true
  end

  def add_to_history(guess)
    @history << guess.upcase
  end
end
