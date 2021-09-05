require './lib/code_generator'
require './lib/player'
require './lib/turn'

class Game
  attr_reader :hidden_code,
              :player1

  def initialize
    @hidden_code = CodeGenerator.new.hidden_code
    @player1 = Player.new
  end


  def game_flow
    start_time = Time.now

    until @player1.quit == true || @player1.won == true
      turn = Turn.new(@hidden_code, @player1)
    end

    end_time = Time.now

    total_time = end_time - start_time

    time_string = Time.at(total_time).strftime("%M minutes, %S seconds") #add hours if time

    if @player1.won == true
      puts "Congratulations! You guessed the sequence '#{hidden_code.join.to_s.upcase}' in #{player1.number_of_guesses} guesses over #{time_string}.

      Do you want to (p)lay again or (q)uit?"
      replay_response = gets.chomp.downcase
      if replay_response == 'p' || replay_response == 'play'

      elsif replay_response == 'q' || replay_response == 'quit'
      else
        puts "You entered an invalid response. I'm done here."
      end
  end
  end
end
