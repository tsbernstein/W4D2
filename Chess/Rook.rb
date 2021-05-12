class Rook < Piece
    include module Slidable

    def symbol
        :R
    end

    def move_dirs
        horizontal_dirs
    end

end