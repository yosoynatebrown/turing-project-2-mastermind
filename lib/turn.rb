class Turn
  attr_reader :guess
  def initialize(guess)
    @guess = guess
  end

  def compare
    hidden_code = ['g', 'r', 'r', 'b'] #needs code to pull in code generator output
    if @guess.split('') == hidden_code
      return "Winner" #game.end method
    end
    require "pry"; binding.pry
    colors_correct = 0
    colors_in_correct_positions = 0
    individual_guesses = @guess.split('')
    individual_guesses.map.with_index {|color, i| color == hidden_code[i]}
    colors_correct = (individual_guesses & hidden_code).count
    colors_in_correct_positions = individual_guesses.map.with_index {|color, i| color == hidden_code[i]}.count(true)
    return [colors_correct, colors_in_correct_positions]
  end
end
