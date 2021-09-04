require 'code_generator'
require 'player'
require 'turn'

class Game
  attr_reader :hidden_code,
              :player1

  def initialize
    @hidden_code = CodeGenerator.new.hidden_code
    @player1 = Player.new

  end


  def game_flow
    start_time = Time.now

    sleep(1)
    until @player1.quit == true || @player1.won == true
      turn = Turn.new
    end
    end_time = Time.now
    total_time = end_time - start_time

    # Fourth: Turn -> compare guess to hidden code, return colors in correct location (total) and colors correct
    # 4.5th: tell player their result
    # Fifth: loop of some kind around turn_flow
    # Sixth: End Timer
    time_string = Time.at(total_time).strftime("%M minutes, %S seconds") #add hours if time

  # if player1.won == true
  puts "Congratulations! You guessed the sequence '#{hidden_code.join.to_s.upcase}' in #{player1.number_of_guesses} guesses over #{time_string}.

  Do you want to (p)lay again or (q)uit?"
  end

  # Seventh: if player1.won? == true, tell them their result
  # end game
end
