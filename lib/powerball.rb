class Powerball

	def initialize
		@white_ball = Array(1..59)
		@power_ball = Array(1..35)
	end

	def random_select
		random_five = @white_ball.combination(5).to_a.sample(1)
		a = random_five.push(@power_ball.sample).flatten
		puts "Your pick 5 is: #{a.first(5)} and your powerball is #{a.last}"
	end
end