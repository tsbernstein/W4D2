class Bishop < Piece
    include module Slidable

    def move_dirs
        diagonal_dirs
    end

end