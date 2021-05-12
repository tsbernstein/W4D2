module Steppable
    private
    KNIGHT_DIRS = [
        [2, 1],
        [2, -1],
        [-2, 1],
        [-2, -1],
        [1, 2],
        [1, -2],
        [-1, 2],
        [-1, -2]
    ]

    KING_DIRS = [ 
        [1,  1],
        [-1,-1],
        [1, -1],
        [-1, 1],
        [0, 1],
        [1, 0],
        [0 ,-1],
        [-1, 0]
    ]

    public
    def knight_dirs
        KNIGHT_DIRS
    end

    def king_dirs
        KING_DIRS
    end

    def moves
        moves = []
        moves_dirs.each do |move|
            moves << increment_possible_moves(move[0], move[1])
        end 
        moves
    end

    def increment_possible_moves(dx, dy)
        pos_moves = []

        x = pos[0] + dx 
        y = pos[1] + dy

        if (board[x,y].color != color || board[x, y].empty?) && board.valid_position?([x, y])
            pos_moves << [x,y]
        end

        pos_moves
    end
end