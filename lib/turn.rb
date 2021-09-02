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


    colors_correct += (individual_guesses & hidden_code.flatten).count
    colors_in_correct_positions += individual_guesses.map.with_index {|color, i| color == hidden_code[i]}.count(true)
  
    #guess argument is equal to 'rrgb'
    #which means the 'b' and the second 'r' in guess are in
    #the correct positions relative to hidden_code below
    #additionally all 3 colors used ('r', 'g', 'b') are correct

    # hidden_code = ['g', 'r', 'r', 'b']

    # your task, should you choose to accept it, is to figure
    # out how to calculate colors_correct and
    # colors_in_correct_positions automatically


    # hint: you should probably first 'split' the guess
    # characters and store it in an array, like it looks
    # in the hidden_code


    return [colors_correct, colors_in_correct_positions]
  end







end
turn = Turn.new
turn.compare('rrgb')
