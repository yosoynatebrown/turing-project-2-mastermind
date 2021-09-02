#require will go here

puts "Welcome to MASTERMIND!\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
response = gets.chomp.downcase
responses = ["p", "play", "i", "instructions", "q", "quit"]# -- leave for refactoring
until responses.include?(response)
# until response == "p" || response == "play" ||
#       response == "i" || response == "instructions" ||
#       response == "q" || response == "quit"

if response == "p" || response == "play"
  # game flow
elsif response == "i" || response == "instructions"
  puts "The object of MASTERMIND is to guess a secret code consisting of a series of 4
  colored pegs. Each guess results in feedback narrowing down the possibilities of the
  code."
  puts "You entered #{response}. Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
  response = gets.chomp.downcase
elsif response == "q" || response == "quit"
  break
else
  puts "You entered #{response}. Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
  response = gets.chomp.downcase
end
end
