class MegaMillions
	def initialize
		@white_ball = Array(1..75)
		@mega_ball = Array(1..15)
	end

	def random_select
		random_five = @white_ball.combination(5).to_a.sample(1)
		a = random_five.push(@mega_ball.sample).flatten
		puts "Your pick 5 is: #{a.first(5)} and your Megaball is #{a.last}"
	end
end