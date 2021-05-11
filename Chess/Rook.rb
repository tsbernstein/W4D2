class Rook < Piece
    include module Slidable

    def move_dirs
        "horizontal"
    end
end