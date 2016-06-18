# create a game that ask for a users input and base of their guess between 1..100 will tell you if the number they guess is correct.

# welcome the user and get their name
def welcome
	puts "Welcome the Number's Game! What's your name?"
	name = gets.chomp
	puts "Well, hello there #{name}. Let's play a game! You guess a number between 1 and 100 and I will tell you if the number you guess is correct or not. If you guess correct you win! Go ahead and guess a number"
end

def game
	puts "guess a number between 0 and 100"
	answer = rand(100)
	guess = gets.chomp.to_i
	guesses = 10
	play_again = ""

	#if guess number is between 0 and 100 && guesses is between 0 and 10
	while guess != answer && guesses > 0
		if !guess.between?(0,100)
			puts "please enter a number between 0 and 100"
			guess = gets.chomp.to_i
		else
			puts "=========="
			puts "#{guesses} guesses remaining #{answer}"
			puts "Close guess! Give or take 99."
			puts "guess again"
			puts "=========="
			guess = gets.chomp.to_i
			guesses -= 1
		end
	end
	puts "Out of guesses. GAME OVER."
	if guess == answer
		puts "**********"
		puts "correct #{guess} = #{answer}"
		puts "YOU WIN!"
		puts "**********"
	end
end

#allows user to play again. This loop runs the entire game
def play_loop
	welcome
	game
	puts "Would you like to play again? Enter Y or N"
	play_again = gets.chomp.upcase
	while play_again != "N"
		if play_again == "Y"
			"Welcome back! Please enter a number between 0 and 100"
			game
		else
			puts "Please be sure to enter Y or N"
		end
		play_again = gets.chomp.upcase
	end
end
# play again loop

play_loop