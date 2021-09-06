require './lib/code_generator'
require './lib/player'
require './lib/turn'

class Game
  attr_reader :hidden_code,
              :player1,
              :start_time,
              # :end_time,
              # :total_time

  def initialize
    @hidden_code = CodeGenerator.new.hidden_code
    @player1     = Player.new
    @time_string = ""
  end


  def game_flow
    @start_time = Time.now
    sleep(1)
    # until @player1.quit == true || @player1.won == true
    #   turn = Turn.new(@hidden_code, @player1)
    # end

    end_time = Time.now

    total_time = end_time - start_time

    @time_string = Time.at(total_time).strftime("%M minutes, %S seconds")
    #this takes the first 0 off of 00 in minutes:
    @time_string[0] = ""
    if @player1.won == true
      puts "Congratulations! You guessed the sequence '#{hidden_code.join.to_s.upcase}' in #{player1.number_of_guesses} guesses over #{@time_string}."
    end
    replay
  end
end


def replay
    if @player1.won == true
      puts "Do you want to (p)lay again or (q)uit?"
      replay_response = gets.chomp.downcase
      if replay_response == 'p' || replay_response == 'play'
        @player1.won = false
        @player1.number_of_guesses = 0
        @hidden_code = CodeGenerator.new.hidden_code
        game_flow
      elsif replay_response == 'q' || replay_response == 'quit'
      else
        puts "You entered an invalid response. Let's try this again."
        replay
      end
    end
  end
