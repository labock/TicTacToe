require './board'

class Game
	victory_conditions =
	 [
	 [0,1,2],[3,4,5],[6,7,8], #rows
	 [0,3,6],[1,4,7],[2,5,8], #columns
	 [0,4,8],[2,4,6]          #diagonals
	]

	def initialize(board, p1, p2)
		@board = board
		@p1 = p1
		@p2 = p2

		@turn = 0
	end

	def welcome
		puts "Welcome #{@p1.name} and #{@p2.name}!"
	end
end

class Player

	attr_accessor :name, :mark

	def initialize(name, mark)
		@name = name
		@mark = mark

		@cells_owned = []
	end
end

board = Board.new
player1 = Player.new("Jim", "O")
player2 = Player.new("Bill", "X")

game = Game.new(board, player1, player2)
game.welcome