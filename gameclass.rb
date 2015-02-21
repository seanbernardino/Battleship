# Game classes

class Player

	attr_accessor :name, :secret, :turn

	def initialize(name, secret)
		@name = name
		@secret = secret
		@current_guess = 0
		@previous_guess = []
		@turn = false
	end

	def current_guess
		#current guess

		# show turn summary
	end

	def previous_guess
		@previous_guess << @current_guess

	end





end
