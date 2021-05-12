
class Pawn < Piece
    attr_reader :symbol 

    def symbol
        :p
    end

    def moves

    end 
    
    def at_start_row?
        true
    end 

    def forward_dir
        color == :w ? -1 : 1
    end 

    def forward_steps
        forward_step = [forward_dir , 0]
        [pos[0] + forward_step[0] , pos[1] + forward_step[1]]
    end 
    

    #check position to the diag up right diag up left
    # copy diag from slidable
    #if its an opponents piece then move into that position 
    def side_attacks
        pos_side_attacks = []

        if forward_dir == - 1
            pos_side_attacks << [pos[0] + 1 , pos[1] + 1]
            pos_side_attacks << [pos[0] + 1 , pos[1] - 1]
        else
            pos_side_attacks << [pos[0] - 1 , pos[1] + 1]
            pos_side_attacks << [pos[0] - 1 , pos[1] - 1]
        end 
    end 
end

