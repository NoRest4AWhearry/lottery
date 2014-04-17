require_relative 'lib/class'
powerball = Powerball.new

puts 'Hello!'
puts 'Welcome to Powerball Helper'
puts 'This program will select at random a possible winning combination for the Powerball lottery!'
puts "Type 'random' to see your winning number"

input = gets.chomp.downcase

if input == 'random'
	puts "\nWe are selecting your winning numbers..."
	puts '........'
	puts "Your winning numbers are: #{powerball.random_select}"
else
	puts "\nSorry, I do not understand that command. It is possible that command has not been programed yet"
end