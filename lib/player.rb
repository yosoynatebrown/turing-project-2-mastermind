class Player
  attr_reader :number_of_guesses
  attr_accessor :quit,
                :won
  def initialize
    @number_of_guesses = 0
    @won = false
    @quit = false
  end

  def increment_number_of_guesses
    @number_of_guesses += 1
  end

  def win
    @won = true
  end
end
