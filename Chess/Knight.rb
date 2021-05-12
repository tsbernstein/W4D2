require_relative 'Steppable'
require_relative 'Piece'
class Knight < Piece
    include Steppable

    def symbol
        :k
    end

    def move_dirs
        knight_dirs
    end

end