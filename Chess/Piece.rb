# require_relative 'require.rb'

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

