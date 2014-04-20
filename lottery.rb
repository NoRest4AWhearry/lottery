require_relative 'lib/lottery_helper'
require_relative 'lib/mega_millions'
require_relative 'lib/powerball'
lottery = LotteryHelper.new
lottery.greeting

loop do
	lottery.user_options

	option = gets.chomp.downcase

	case option
		when 'power'
			power = Powerball.new
			puts "\nWe are selecting your Powerball numbers..."
			puts '........'
			power.random_select
		when 'mega'
			mega = MegaMillions.new
			puts "\nWe are selecting your Mega Millions numbers..."
			puts '........'
			mega.random_select
		when 'exit'
			lottery.good_bye
			break
		else
			puts 'Sorry, I do not understand your command.'
	end
end