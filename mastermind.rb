#require will go here

puts "Welcome to MASTERMIND!\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
response = gets.chomp.downcase
until response == "p" || response == "play" ||
      response == "i" || response == "instructions" ||
      response == "q" || response == "quit"
if response == "p" || response == "play"
  # game flow
elsif response == "i" || response == "instructions"
  # instructions presented
elsif response == "q" || response == "quit"
  break
else
  puts "You entered #{response}. Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
  response = gets.chomp.downcase
end
end
