require_relative "Piece"

class Bishop < Piece

    def symbol
        '♗'.colorize(color)
    end

    def move_dirs
        DIAGONAL_DIRS
    end

end