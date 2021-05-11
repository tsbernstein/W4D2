require_relative "require.rb"

class Board
    COORDINATES = [[]]
    def initialize
        @grid = Array.new(8) { Array.new(8) }

        white_pieces
        black_pieces
        middle_board
    end 

    def white_pieces
        @grid.each_with_index do |row, i|
            if i == 0 || i == 1
                row.each_with_index do |square, j|
                    pos = [i, j]
                    piece = Piece.new(:w, self, pos)
                    add_piece(piece, pos)
                end
            end
        end
    end 

    def black_pieces
        @grid.each_with_index do |row, i|
            if i == 6 || i == 7
                row.each_with_index do |square, j|
                    pos = [i, j]
                    piece = Piece.new(:b, self, pos)
                    add_piece(piece, pos)
                end
            end
        end
    end 

    def middle_board
        @grid.each_with_index do |row, i|
            unless i == 0 || i == 1 || i == 6 || i == 7
                row.each_with_index do |square, j|
                    pos = [i, j]
                    piece = NullPiece.new(:n, self, pos)
                    add_piece(piece, pos)
                end
            end
        end
    end 

    def add_piece(piece, pos)
        @grid[pos[0]][pos[1]] = piece
    end
end

b = Board.new
p b