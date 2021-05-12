module Slidable
    private
    HORIZONTAL_DIRS = [
        [0, 1],
        [1, 0],
        [0 ,-1],
        [-1, 0]
    ]

    DIAG_DIRS = [ 
        [1, 1],
        [-1, -1],
        [1, -1],
        [-1, 1]
    ]

    public
    def horizontal_dirs
        HORIZONTAL_DIRS
    end 

    def diagonal_dirs
        DIAG_DIRS
    end 

    def moves
        pos_moves = []
        if moves_dirs == "horizontal"
            horizontal_dirs.each do |move|
                pos = self.pos
                new_pos = [move[0] + pos[0] , move[1] + pos[1]]
                pos_moves << [new_pos] if self.valid_moves.include?(new_pos)
            end 

        elsif
            moves_dirs == "diagonal"
            diagonal_dirs
        else
            horizontal_dirs + diagonal_dirs
        end
    end

    def increment_possible_moves(dx, dy)
        pos_moves = []
        x = pos[1]
        y = pos[0]

        stop_loop = false
        until !stop_loop
            stop_loop = true
            break if !self.valid_moves.include?([x, y])
            break if self.board[x, y].color == self.color
            if self.board[x, y].empty?
    end
end

# Horizontal
# [0, 1], [0 ,  2], [0 ,  3], [0 ,  4], [0,  5], [0,  6], [0,  7],
# [1, 0], [2 , 0], [3 , 0], [4 , 0 ], [5 , 0], [6 , 0], [7 , 0],
# [0 ,-1], [0 , -2], [0 , -3], [0 , -4], [0 , -5], [0 , -6], [0 , -7],
# [-1, 0], [-2, 0 ], [-3, 0], [-4, 0 ], [-5, 0], [-6,0 ], [-7, 0]

# diagonal
# [1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7] 
# [-1, -1], [-2 , -2], [-3 , -3], [-4, -4], [-5 , -5], [-6, -6], [-7, -7] 
# [1, -1], [2 , -2], [3, -3], [4, -4], [5, -5], [6, -6], [7, -7] 
# [-1, 1], [-2, 2], [-3, 3], [-4, 4], [-5, 5], [-6, 6], [-7, 7] 