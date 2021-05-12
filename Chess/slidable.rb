# require_relative './require.rb'
module Slidable
    private
    HORIZONTAL_DIRS = [
        [0, 1],
        [1, 0],
        [0 ,-1],
        [-1, 0]
    ]

    DIAG_DIRS = [ 
        [1,  1],
        [-1,-1],
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
        moves = []
        moves_dirs.each do |move|
            moves << increment_possible_moves(move[0], move[1])
        end 
        moves
    end

    def increment_possible_moves(dx, dy)
        pos_moves = []

        x = pos[0]  
        y = pos[1]


        stop_loop = false
        until !stop_loop
            stop_loop = true

            x += dx
            y += dy

            break if !board.valid_position?([x, y])
            break if board[x, y].color == color
            if board[x,y].color != color 
                pos_moves << [x,y]
                break
            elsif board[x, y].empty?
                pos_moves << [x,y]
            end 
            stop_loop = false
        end 
        pos_moves
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