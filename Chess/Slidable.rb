module Slidable
    private
    HORIZONTAL_DIRS = [
        [x, y + 1], [x, y + 2], [x, y + 3], [x, y + 4], [x, y + 5], [x, y + 6], [x, y + 7],
        [x, y - 1], [x, y - 2], [x, y - 3], [x, y - 4], [x, y - 5], [x, y - 6], [x, y - 7],
        [x - 1, y], [x - 2, y], [x - 3, y], [x - 4, y], [x - 5, y], [x - 6, y], [x - 7, y],
        [x + 1, y], [x + 2, y], [x + 3, y], [x + 4, y], [x + 5, y], [x + 6, y], [x + 7, y],
    ]

    DIAG_DIRS = [ 
        [x + 1, y + 1] , [x + 2 , y + 2] , [x + 3 , y + 3] , [x + 4 , y + 4] , [ x + 5 , y + 5]  , [ x + 6, y + 6] , [ x + 7, y + 7] 
        [x - 1, y - 1] , [x - 2 , y - 2] , [x - 3 , y - 3] , [x - 4 , y - 4] , [ x - 5 , y - 5]  , [ x - 6, y - 6] , [ x - 7, y - 7] 
        [x + 1, y - 1] , [x + 2 , y - 2] , [x + 3 , y - 3] , [x + 4 , y - 4] , [ x + 5 , y - 5]  , [ x + 6, y - 6] , [ x + 7, y - 7] 
        [x - 1, y + 1] , [x - 2 , y + 2] , [x - 3 , y + 3] , [x - 4 , y + 4] , [ x - 5 , y + 5]  , [ x - 6, y + 6] , [ x  - 7, y + 7] 
    ]

    public
    def horizontal_dirs(pos)
        horizontal = 
    end 

    def diagonal_dirs
    end 





end