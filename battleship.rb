require_relative 'gameclass'

def para(lines) # Method simply adds line breaks when needed in the console display
	lines.times do |i|
		puts " "
	end
end

def turn
	player1.turn = !player2.turn
	
end

def playgame #game execution

	
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














