require_relative "./require.rb"
require 'byebug'

class Board

    COORDINATES = (0...8).to_a.product((0...8).to_a)

    attr_reader :grid

    def initialize
        @grid = Array.new(8) { Array.new(8) }

        white_pieces
        black_pieces
        middle_board
    end 

    def white_pieces
        @grid.each_with_index do |row, i|
            if i == 0
                row.each_with_index do |square, j|
                    pos = [i, j]
                    piece = Rook.new(:white, self, pos) if j == 0 || j == 7
                    piece = Knight.new(:white, self, pos) if j == 1 || j == 6
                    piece = Bishop.new(:white, self, pos) if j == 2 || j == 5
                    piece = Queen.new(:white, self, pos) if j == 3
                    piece = King.new(:white, self, pos) if j == 4
                    add_piece(piece, pos)
                end
            elsif i == 1
                row.each_with_index do |square, j|
                    pos = [i, j]
                    piece = Pawn.new(:white, self, pos)
                    add_piece(piece, pos)
                end
            end
        end
    end 

    def black_pieces
        @grid.each_with_index do |row, i|
            if i == 7
                row.each_with_index do |square, j|
                    pos = [i, j]
                    piece = Rook.new(:blue, self, pos) if j == 0 || j == 7
                    piece = Knight.new(:blue, self, pos) if j == 1 || j == 6
                    piece = Bishop.new(:blue, self, pos) if j == 2 || j == 5
                    piece = Queen.new(:blue, self, pos) if j == 3
                    piece = King.new(:blue, self, pos) if j == 4
                    add_piece(piece, pos)
                end
            elsif i == 6
                row.each_with_index do |square, j|
                    pos = [i, j]
                    piece = Pawn.new(:blue, self, pos)
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
                    piece = NullPiece.instance
                    add_piece(piece, pos)
                end
            end
        end
    end 

    def add_piece(piece, pos)
        @grid[pos[0]][pos[1]] = piece
    end

    def empty?(pos)
        @grid[pos[0]][pos[1]] == NullPiece
    end 

    def [](pos)
        @grid[pos[0]][pos[1]]
    end 

    def []=(pos, piece)
        @grid[pos[0]][pos[1]] = piece
    end 

    def valid_position?(pos)
        coordinates = (0...8).to_a.product((0...8).to_a)
        coordinates.include?(pos)
    end 

    # def look_at_board(piece, pos)
    #     @grid[pos[0]][pos[1]] = piece.color
    # end

    # need to write a catch method so user can re-input move
    def move_piece(color, start_pos, end_pos)


        piece = self[start_pos]
        end_piece = self[end_pos]


        raise ArgumentError.new "No piece at position" if empty?(start_pos)
        raise ArgumentError.new "Not a valid end position" if !valid_position?(end_pos)


        self[end_pos] = piece
        self[start_pos] = end_piece
        

        piece.pos = end_pos
        end_piece.pos = start_pos
    end

    def in_check?(color)
        opp_pieces = pieces.select { |piece| piece.color != color}
        king_pos = find_king(color)

        opp_pieces.each do |piece|
            p "You're in DANGER!"
            return true if piece.moves.include?(king_pos)
        end

        false
    end

    def pieces
        pieces = []
        grid.each_with_index do |row, i|
            row.each_with_index do |piece, j|
                pieces << piece if !piece.is_a?(NullPiece)
            end
        end
        pieces
    end

    def find_king(color)
        king_pos = []
        grid.each_with_index do |row, i|
            row.each_with_index do |piece, j|
                king_pos = [i, j] if piece.is_a?(King) && piece.color == color
            end
        end
    end
end

# b = Board.new
# # p b
# b.move_piece([6,0], [5,0])
# p b
# # p = b.grid[5][0]
# # puts p.pos
