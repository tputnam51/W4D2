require_relative "Piece"
class King < Piece

    def symbol
        '♔'.colorize(color)
    end

    def move_diffs
        [
            [0, 1],
            [0,-1],
            [1, 0],
            [-1,0],
            [1, 1],
            [1,-1],
            [-1,1],
            [-1,-1] 
        ]
    end

end