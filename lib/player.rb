class Player
  attr_reader :number_of_guesses
  # attr_reader :name used in case of leaderboard function
  def initialize
    @number_of_guesses = 0
  end

  def increment_number_of_guesses
    @number_of_guesses += 1
  end
end
