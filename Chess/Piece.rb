require_relative "require"

class Piece
    attr_reader :color, :board
    attr_accessor :pos

    def initialize(color, board, pos = [])
        @color = color
        @board = board
        @pos = pos
    end 

    def empty?
        @color == "n"
    end

    def valid_moves
        
    end


end 

