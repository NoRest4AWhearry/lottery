class MegaMillions
	def initialize
		@white_ball = Array(1..75)
		@mega_ball = Array(1..15)
	end

	def random_select
		easy_pick = @white_ball.combination(5).to_a.sample(1).push(@mega_ball.sample).flatten
		puts "Your pick 5 is: #{easy_pick.first(5)} and your Megaball is #{easy_pick.last}"
	end
end