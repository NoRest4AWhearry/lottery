class Powerball
	def initialize
		@white_ball = Array(1..59)
		@power_ball = Array(1..35)
	end

	def random_select
		easy_pick = @white_ball.combination(5).to_a.sample(1).push(@power_ball.sample).flatten
		puts "Your pick 5 is: #{easy_pick.first(5)} and your powerball is #{easy_pick.last}"
	end
end