require_relative 'Steppable'
require_relative 'Piece'
class King < Piece
    include Steppable

    def symbol
        :K
    end

    def move_dirs
        king_dirs
    end

end