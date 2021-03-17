module Slideable
    HORIZONTAL_DIRS = [ [0, 1],
                        [0, -1],
                        [1, 0],
                        [-1, 0]
                      ].freeze
                        

    DIAGONAL_DIRS = [ [1, 1],
                      [1,-1],
                      [-1,1],
                      [-1,-1] 
                    ].freeze 
                      

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves

    end

    private

    def moves_dirs
        raise NotImplementedError
    end

    def grow_unblocked_moves_in_dir(dy,dx)    # [0,0]   #[dy,dx]
        moves = []
        cur_pos = self.pos
        new_pos = cur_pos.first + dy, cur_pos.last + dx
        while 
    end
                     
end













# #chess board 8 x 8:
# [[[0, 0], [0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7]],
#  [[1, 0], [1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7]],
#  [[2, 0], [2, 1], [2, 2], [2, 3], [2, 4], [2, 5], [2, 6], [2, 7]],
#  [[3, 0], [3, 1], [3, 2], [3, 3], [3, 4], [3, 5], [3, 6], [3, 7]],
#  [[4, 0], [4, 1], [4, 2], [4, 3], [4, 4], [4, 5], [4, 6], [4, 7]],
#  [[5, 0], [5, 1], [5, 2], [5, 3], [5, 4], [5, 5], [5, 6], [5, 7]],
#  [[6, 0], [6, 1], [6, 2], [6, 3], [6, 4], [6, 5], [6, 6], [6, 7]],
#  [[7, 0], [7, 1], [7, 2], [7, 3], [7, 4], [7, 5], [7, 6], [7, 7]]]