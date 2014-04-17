class MegaMillions
	def initialize
		@white_ball = Array(1..75)
		@mega_ball = Array(1..15)
	end

	def random_select
		random_five = @white_ball.combination(5).to_a.sample(1)
		random_five.push(@mega_ball[rand(1..15)])
	end
end

class Powerball

	def initialize
		@white_ball = Array(1..59)
		@power_ball = Array(1..35)
	end

	def random_select
		random_five = @white_ball.combination(5).to_a.sample(1)
		random_five.push(@power_ball[rand(1..35)])
	end
end