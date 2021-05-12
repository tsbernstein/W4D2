class Knight < Piece
    include module Steppable

    def symbol
        :Kt
    end

    def move_dirs
        knight_dirs
    end

end