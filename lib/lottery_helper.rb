class LotteryHelper

	def greeting
		puts 'Hello!'
		puts 'Welcome to Lottery Helper'
		puts "This program will select at random\na possible winning combination for\nthe Powerball or Mega Millions lottery!"
	end

	def user_options
		puts "\nWhich game would you like to play?"
		puts 'Power -- to play Powerball'
		puts 'Mega -- to play Mega Millions'
		puts 'Exit -- to exit Lottery Helper'
	end

	def good_bye
		puts "\nThanks for playing!"
		puts 'Good bye!'
	end
end