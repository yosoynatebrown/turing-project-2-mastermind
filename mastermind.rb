#require will go here

puts "Welcome to MASTERMIND!\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
response = gets.chomp.downcase

until response == 'q' || response == 'quit'
if response == "p" || response == "play"
  # game flow
  response = 'q' #ends with this no matter what
elsif response == "i" || response == "instructions"
  puts "The object of MASTERMIND is to guess a secret code consisting of a series of 4
  colored pegs. Each guess results in feedback narrowing down the possibilities of the
  code."
  puts "You entered #{response}. Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
  response = gets.chomp.downcase
else
  puts "You entered #{response}. Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
  response = gets.chomp.downcase
end
end
