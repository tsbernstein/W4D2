class Rook < Piece
    include module Slidable

    def move_dirs
        horizontal_dirs
    end

end