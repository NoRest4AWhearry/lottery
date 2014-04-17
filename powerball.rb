require_relative 'lib/class'
puts 'Hello!'
puts 'Welcome to Lottery Helper'
puts 'This program will select at random a possible winning combination for the Powerball or Mega Millions lottery!'

loop do
	puts "\nWhich game would you like to play?"
	puts 'Power -- to play Powerball'
	puts 'Mega -- to play Mega Millions'
	puts 'Exit -- to exit Lottery Helper'

	lottery = gets.chomp.downcase

	if lottery == 'power'
		power = Powerball.new
		puts "\nWe are selecting your winning numbers..."
		puts '........'
		puts "Your winning Powerball numbers are: #{power.random_select}"
	elsif lottery == 'mega'
		mega = MegaMillions.new
		puts "\nWe are selecting your winning numbers..."
		puts '........'
		puts "Your winning Mega Millions numbers are: #{mega.random_select}"
	elsif lottery == 'exit'
		break
	else
		puts 'Sorry, I do not understand your command.'
	end
end