require_relative 'player'

class Computer < Player

	CHOICES = ["Rock","Paper","Scissors"]

	def initialize
		super("Deep Blue")
	end

	def pick
		@picks = CHOICES.sample
	end

end