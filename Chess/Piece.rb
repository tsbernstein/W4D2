require_relative "require"

class Piece
    attr_reader :color
    attr_accessor :pos

    def initialize(color, board, pos = [])
        @color = color
        @board = board
        @pos = pos
    end 

    #go back later
    def empty?
        @color == "n"
    end

    def valid_moves
        COORDINATES
    end


end 

