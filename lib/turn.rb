class Turn

  def initialize
  end

  def compare(guess)

    colors_correct = 0
    colors_in_correct_positions = 0

    hidden_code = ['g', 'r', 'r', 'b']
    guess = 'rrgb' # This will probably wind up being equal to guess.gets from the game class
    individual_guesses = guess.split ''

    individual_guesses.map.with_index {|color, i| color == hidden_code[i]}


    colors_correct = (individual_guesses & hidden_code).count
    colors_in_correct_positions = individual_guesses.map.with_index {|color, i|
       color == hidden_code[i]}.count(true)

    return [colors_correct, colors_in_correct_positions]
  end
end
