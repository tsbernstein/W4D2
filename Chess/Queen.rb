class Queen < Piece
    include module Slidable

    def symbol
        :Q
    end

    def move_dirs
        horizontal_dirs + diagonal_dirs
    end

end