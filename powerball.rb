white_balls = Array(1..59)

power_ball = Array(1..35)

five_num = white_balls.combination(5).to_a.sample(1)

winning_6 = five_num.push(power_ball[rand(1..35)])

p winning_6