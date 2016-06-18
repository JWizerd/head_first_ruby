# create a game that ask for a users input and base of their guess between 1..100 will tell you if the number they guess is correct.

# welcome the user and get their name

puts "Welcome the Number's Game! What's your name?"

name = gets.chomp

puts "Well, hello there #{name}. Let's play a game! You guess a number between 1 and 100 and I will tell you if the number you guess is correct or not. If you guess correct you win! Go ahead and guess a number"

puts "guess a number between 0 and 100"

answer = rand(100)
guess = gets.chomp.to_i
guesses = 10

#make sure guesses is between 0 and 100 before run
	while !guess.between?(0,100)
		puts "please enter a number between 0 and 100"
		guess = gets.chomp.to_i
	end
#if guess number is between 0 and 100 && guesses is between 0 and 10
	if guess.between?(0,100)
		while guess != answer && guesses > 0
			puts "#{guesses} remaining"
			puts "=========="
			puts "Close guess! Give or take 99."
			puts "guess again"
			puts "=========="
			guess = gets.chomp.to_i
			guesses -= 1
		end
		puts "Out of guesses. GAME OVER."
		if guess == answer
			puts "**********"
			puts "correct #{guess} = #{answer}"
			puts "YOU WIN!"
			puts "**********"
		end
	end
