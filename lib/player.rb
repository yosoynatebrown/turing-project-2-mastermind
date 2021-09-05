class Player
  attr_accessor :quit,
                :won,
                :number_of_guesses
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
