class King < Piece
    include module Steppable

    def move_dirs
        king_dirs
    end

end