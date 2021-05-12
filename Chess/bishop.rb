require_relative 'slidable'
require_relative 'Piece'
class Bishop < Piece
    include Slidable

    def symbol
        :B
    end

    def move_dirs
        diagonal_dirs
    end

end