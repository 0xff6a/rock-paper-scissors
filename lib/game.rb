class Game 

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
		@players = [@player1, @player2]
	end

	BEATS = {rock: :scissors, scissors: :paper, paper: :rock}

	attr_reader :players, :player1, :player2

	def winner
		return "Draw" if draw?
		return player1  if player1_wins?
		player2
	end

	def normalize(pick)
		pick.downcase.to_sym
	end

	def draw?
		player1.pick == player2.pick
	end

	def player1_wins?
		BEATS[normalize(player1.pick)] == normalize(player2.pick)
	end

end