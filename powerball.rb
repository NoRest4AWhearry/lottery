class Powerball

	def initialize
		@white_ball = Array(1..59)
		@power_ball = Array(1..35)
	end

	def random_select
		random_five = @white_ball.combination(5).to_a.sample(1)
		winning_6 = random_five.push(@power_ball[rand(1..35)])
		p winning_6
	end
end

powerball = Powerball.new

powerball.random_select