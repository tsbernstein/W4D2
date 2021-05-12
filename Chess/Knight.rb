class Knight < Piece
    include module Steppable

    def move_dirs
        knight_dirs
    end

end