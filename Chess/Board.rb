require_relative "require.rb"

class Board
    COORDINATES = [[]]
    def initialize
        @grid = Array.new(8) { Array.new(8) }

        @grid.each_with_index do |row, i|
            if i == 0 || i == 1
                row.each_with_index do |square, j|
                    pos = [i, j]
                    piece = Piece.new("white", self, pos)
                    add_piece(piece, pos)
                end
            end
        end
    end 

    def add_piece(piece, pos)
        
    end
end