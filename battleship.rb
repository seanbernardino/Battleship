def para(lines) # Method simply adds line breaks when needed in the console display
	lines.times do |i|
		puts " "
	end
end

def input_user_info #accepts both players inputs
	
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