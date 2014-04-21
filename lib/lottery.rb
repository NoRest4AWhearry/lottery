class Lottery
	def initialize
		@white_ball = []
		@money_ball = []
	end

	def random_select
		easy_pick = @white_ball.combination(5).to_a.sample(1).push(@money_ball.sample).flatten
		puts "Your pick 5 is: #{easy_pick.first(5)} and your winning ball is #{easy_pick.last}"
	end

	def between_select(min, max)
		begin
			easy_pick = @white_ball.combination(5).to_a.sample(1).push(@money_ball.sample).flatten
			sum = easy_pick.inject(:+)
		end until sum > min && sum < max
		puts "Your pick 5 is: #{easy_pick.first(5)} and your winning ball is #{easy_pick.last}"
		puts "The sum of your numbers is: #{sum}."
	end

	def includes_num(num)
		begin
			easy_pick = @white_ball.combination(5).to_a.sample(1).push(@money_ball.sample).flatten
		end until easy_pick.include?(num)
		puts "Your pick 5 is: #{easy_pick.first(5)} and your winning ball is #{easy_pick.last}"
	end

end

class Powerball < Lottery
	def initialize
		@white_ball = Array(1..59)
		@money_ball = Array(1..35)
	end
end

class MegaMillions < Lottery
	def initialize
		@white_ball = Array(1..75)
		@money_ball = Array(1..15)
	end
end