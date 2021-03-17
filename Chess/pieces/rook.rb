require_relative "Piece"

class Rook < Piece 
    include Slideable

    def symbol
        '♖'.colorize(color) 
    end

    def move_dirs
        HORIZONTAL_DIRS
    end
end