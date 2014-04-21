require_relative 'lib/lottery_helper'
require_relative 'lib/lottery'
helper = LotteryHelper.new
helper.greeting

loop do
	helper.user_options

	option = gets.chomp.downcase

	case option
		when 'power'
			helper.power_ball_choice
		when 'mega'
			helper.mega_millions_choice
		when 'exit'
			helper.good_bye
			break
		else
			puts 'Sorry, I do not understand your command.'
	end
end