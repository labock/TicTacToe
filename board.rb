class Board

	attr_accessor :cells

	def initialize
		@cells = [
			' ',' ',' ',
			' ',' ',' ',
			' ',' ',' '
		]
	end

	def show
		puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} \n #{@cells[3]} | #{@cells[4]} | #{@cells[5]} \n #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
	end

	def mark(cell, mark="x")
		@cells[cell] = mark
	end
end