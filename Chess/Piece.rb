class Piece
    attr_reader :color

    def initialize(color, board, pos = [])
        @color = color
        @board = board
        @pos = pos
    end 

    #go back later
    def empty?
    end



end 