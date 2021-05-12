class Bishop < Piece
    include module Slidable

    def symbol
        :B
    end

    def move_dirs
        diagonal_dirs
    end

end