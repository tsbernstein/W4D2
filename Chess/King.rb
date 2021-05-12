class King < Piece
    include module Steppable

    def symbol
        :Kg
    end

    def move_dirs
        king_dirs
    end

end