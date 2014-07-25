require_relative 'player'

class Computer < Player

	CHOICES = ["Rock","Paper","Scissors"]

	def initialize
		super("Deep Blue")
	end

	def autopick
		@picks = CHOICES.sample
	end

end