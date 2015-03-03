require_relative 'gameclass'

def para(lines) # Method simply adds line breaks when needed in the console display
	lines.times do |i|
		puts " "
	end
end

@prev_turn = ""

def toggle_turn
	if @prev_turn == player1.name
		@active = player2.name
	elsif @prev_turn == player2.name
		@active = player1.name
	else
		@active = player1.name
	end
	return @active			
end

# def active_player #This method is going to toggle player turn and should return the name of the player whose turn it is
# 	toggle_turn
# 	if player1.turn == true
# 		player1.name #player1's turn
# 	else
# 		player2.name #else, player2's turn
# 	end
# 	inactive_player
# end


# def inactive_player
	
# end

def playgame #game execution
system ("clear")
puts "OKay! Time to play..."
para(4)
p toggle_turn
# puts "#{active_player}, can you guess what "
	
end


def input_user_info #accepts both players inputs
	puts "Player 1: Please enter your name"
	p1_name = gets.chomp
	#pass this the player 1 objects name attribute
	para(1)
	puts "Well done! Thank you, #{p1_name}." 
	para(1)
	puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
	para(1)
	puts "Player 2: Please enter your name"
	p2_name = gets.chomp
	#pass this the player 2 objects name attribute
	para(1)
	puts "Well done! Thank you, #{p2_name}." 
	para(1)
	puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
	para(1)
	puts "Okay back to you, #{p1_name}. First make sure that #{p2_name} can't see your screen. Then enter your secret number between 10 and 100"
	#At a later stage add a method to validate that the input is a number
	p1_secret_num = gets.chomp.to_i
	player1 = Player.new(p1_name, p1_secret_num)
	player1.turn = true
	system ("clear")
	puts "Okay now over to you, #{p2_name}. First make sure that #{p1_name} can't see your screen. Then enter your secret number between 10 and 100"
	#At a later stage add a method to validate that the input is a number
	p2_secret_num = gets.chomp.to_i
	player2 = Player.new(p2_name, p2_secret_num)
	playgame
end

def menu
	system ("clear") #clears the console
	puts "--------------------------------------------------------"
	puts "MAIN MENU"
	puts "--------------------------------------------------------"
	puts "Welcome to the 2-player guessing game. You will need two players for this game."
	puts "Ready..."
	para(2)
	input_user_info
end

menu 














