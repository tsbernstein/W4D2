require_relative 'slidable'
require_relative 'Piece'
class Queen < Piece
    include Slidable

    def symbol
        :Q
    end

    def move_dirs
        horizontal_dirs + diagonal_dirs
    end

end