class LotteryHelper

	def greeting
		puts "\nHello!"
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

	def game_specific_options
		puts "\nWhat would you like to do?"
		puts 'Random -- For random set of numbers'
		puts 'Sum -- for set of numbers whose sum is between to numbers'
		puts 'With -- For set of numbers containing a specific number'
	end

	def power_ball_choice
		power = Powerball.new
		game_specific_options
		choice = gets.chomp.downcase

		case choice
			when 'random'
				power.random_select
			when 'sum'
				puts 'Type a minimum sum: '
				min = gets.chomp.to_i
				puts 'Type a maximum sum: '
				max = gets.chomp.to_i
				power.between_select(min, max)
			when 'with'
				puts 'Type a number you would like to include: '
				num = gets.chomp.to_i
				power.includes_num(num)
			else
				puts 'Sorry, I do not understand your command.'
		end
	end

	def mega_millions_choice
		mega = MegaMillions.new
		game_specific_options
		choice = gets.chomp.downcase
		case choice
			when 'random'
				mega.random_select
			when 'sum'
				puts 'Type a minimum sum: '
				min = gets.chomp.to_i
				puts 'Type a maximum sum: '
				max = gets.chomp.to_i
				mega.between_select(min, max)
			when 'with'
				puts 'Type a number you would like to include: '
				num = gets.chomp.to_i
				mega.includes_num(num)
			else
				puts 'Sorry, I do not understand your command.'
		end
	end

end