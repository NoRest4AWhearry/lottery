require_relative 'lib/mega_millions'
require_relative 'lib/powerball'
puts 'Hello!'
puts 'Welcome to Lottery Helper'
puts "This program will select at random\na possible winning combination for\nthe Powerball or Mega Millions lottery!"

loop do
	puts "\nWhich game would you like to play?"
	puts 'Power -- to play Powerball'
	puts 'Mega -- to play Mega Millions'
	puts 'Exit -- to exit Lottery Helper'

	lottery = gets.chomp.downcase

	if lottery == 'power'
		power = Powerball.new
		puts "\nWe are selecting your Powerball numbers..."
		puts '........'
		power.random_select
	elsif lottery == 'mega'
		mega = MegaMillions.new
		puts "\nWe are selecting your Mega Millions numbers..."
		puts '........'
		mega.random_select
	elsif lottery == 'exit'
		puts "\nThanks for playing!"
		puts 'Good bye!'
		break
	else
		puts 'Sorry, I do not understand your command.'
	end
end